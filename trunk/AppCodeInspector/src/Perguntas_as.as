import mx.collections.ArrayCollection;
import CodeInspector.XMLLoader;
import CodeInspector.CSS;
import Util.InspectorXUserEnum;
import flash.events.MouseEvent;
import mx.controls.textClasses.TextRange;
import mx.managers.PopUpManager;
import flash.events.TextEvent;
import flash.events.Event;
import valueObjects.QuestaoEntity;
import mx.controls.Alert;
import valueObjects.TrechoDefeitoEntity;
import valueObjects.ItemTaxonomiaEntity;
import mx.rpc.events.ResultEvent;
import valueObjects.TaxonomiaEntity;

public var ArtefatosList:ArrayCollection;

//private var xml:XMLLoader;
private var css:CSS;

private var cssBool:Boolean = false;
private var xmlBool:Boolean = false;
private var pertguntasTotal:int = 10;
public var Questao_Trechos_DefeitoList_DC:ArrayCollection;
public var RespostaPopUp:RespostaWindow = new RespostaWindow();

[Bindable]
public var itemTaxonomia:ItemTaxonomiaEntity;

public function onLoad():void
{
	var ta:int = TipoArtefato_Id;
	
	IniciarPartida.token = ws_InspectorX.IniciarPartida(NivelDificuldade,UsuarioTipoID,InspectorXUserEnum.DefectCrawler.type);
	
	setQuestaoTextArea();
	
	//È necessário remover as linhas abaixo.
	//	xml = new XMLLoader();
	//	xml.LoadWS(ArtefatosList);
	//	xml.addEventListener("XML_Loaded", xmlDone);
	
	css = new CSS();
	css.Load("Arquivos/styles.css");
	css.addEventListener("CSS_Loaded", cssDone);
}

private function onMouseUp(evt:MouseEvent):void
{
	QuestaoSelectedText = new TextRange(txa_QuestoesDefectCrawler,false,txa_QuestoesDefectCrawler.selectionBeginIndex,txa_QuestoesDefectCrawler.selectionEndIndex);
	var selLength:int = QuestaoSelectedText.endIndex - QuestaoSelectedText.beginIndex;
	
	if(selLength)
	{
		RespostaPopUp.nivelDificuldade = NivelDificuldade;
		RespostaPopUp.listRespostasSelecionadas=RespostasSelecionadas;
		
		PopUpManager.addPopUp(RespostaPopUp,this,true);
		PopUpManager.centerPopUp(RespostaPopUp);
	}
}

private function textEvent(e:TextEvent):void 
{
	if(Questao_Trechos_DefeitoList_DC.length>RespostasSelecionadas.length)
	{
		RespostaPopUp.nivelDificuldade = NivelDificuldade;
		RespostaPopUp.listRespostasSelecionadas=RespostasSelecionadas;
		PopUpManager.addPopUp(RespostaPopUp,this,true);
		PopUpManager.centerPopUp(RespostaPopUp);
	}
}

private function cssDone(e:Event):void 
{
	cssBool = true;
	xmlBool = true;
	allDone();
}

public function xmlDone():void 
{
	xmlBool = true;
	allDone();
}

private function allDone():void	
{
	if(cssBool && xmlBool)
	{
		
		txa_QuestoesDefectCrawler.styleSheet = css.sheet;
		
		var q:QuestaoEntity = ArtefatosList[PerguntaAtualIndex] as QuestaoEntity;
		GetQuestoesTaxonomia.token = ws_InspectorX.GetQuestaoTaxonomia(q.Q_ID);
		
		txa_QuestoesDefectCrawler.htmlText = q.Q_XML;
		
		GetTrechosQuestao.token = ws_InspectorX.GetTrechosDefeito(q.Q_ID);
		txa_QuestoesDefectCrawler.addEventListener(TextEvent.LINK, textEvent);
		
	}
}

protected function btnProximaPergunta_clickHandler(event:MouseEvent):void
{
	if(RespostasSelecionadas.length == 0)
	{
		Alert.show("Encontre e selecione o motivo do defeito antes de prosseguir.");
		return;
	}
		
	else if(Questao_Trechos_DefeitoList_DC.length>RespostasSelecionadas.length)
	{
		Alert.show("Ainda faltam defeitos na questão.");
		return;
	}
		
	else
	{
		verificarRespostas();
		
		txa_QuestoesDefectCrawler.styleSheet = css.sheet;
		
		if ((PerguntaAtualIndex==(ArtefatosList.length-1))||PerguntaAtualIndex==pertguntasTotal)
		{
			encerrarJogo();
		}
		else
			setProximaQuestao();
		
	}
}

private function verificarRespostas():void
{
	var pontos:int=0;
	for each(var qTrecho:TrechoDefeitoEntity in Questao_Trechos_DefeitoList_DC)
	{
		var trechoQuestao:TrechoDefeitoEntity = qTrecho;
		
		for each(var trechoDefeito:TrechoDefeitoEntity in RespostasSelecionadas)
		{
			var trechoResposta:TrechoDefeitoEntity = trechoDefeito;
			
			if(NivelDificuldade==FACIL)
			{
				if(trechoQuestao.IT_ID==trechoResposta.IT_ID)
					++pontos;			
				else
				{
					Alert.show("Ops! Você errou!\n\nO trecho correto era: "+trechoQuestao.Conteudo+".\nO defeito associado a este trecho era \""+getItemTaxonomia(qTrecho.IT_ID).Nome
						+ "\n\nExplicação: \" ("+ trechoQuestao.Explicacao +").");
				}
			}
			else
			{
				if((trechoQuestao.Conteudo==trechoResposta.Conteudo)&&(trechoQuestao.IT_ID==trechoResposta.IT_ID))
				{
					++pontos;
				}
				else
				{
					Alert.show("Ops! Você errou!\n\nO trecho correto era: "+trechoQuestao.Conteudo+".\nO defeito associado a este trecho era \""+getItemTaxonomia(qTrecho.IT_ID).Nome
						+ "\n\nExplicação: \" ("+ trechoQuestao.Explicacao +").");
				}
			}
		}
	}
	var q:QuestaoEntity = ArtefatosList[PerguntaAtualIndex] as QuestaoEntity;
	SetQuestaoAcerto.token = ws_InspectorX.setQuestaoAcerto(q.Q_ID,PartidaAtualId,pontos);
}

private function encerrarJogo():void
{
	Alert.show("O jogo Terminou");
	EncerraPartida.token=ws_InspectorX.EncerrarPartida(PartidaAtualId,PontosTotal);
	PerguntaAtualIndex=0;
	Questao_Trechos_DefeitoList_DC.removeAll();
	RespostasSelecionadas.removeAll();
	txa_QuestoesDefectCrawler.htmlText="";
	ArtefatosList.removeAll();
}

private function setProximaQuestao():void
{
	++PerguntaAtualIndex;
	Questao_Trechos_DefeitoList_DC.removeAll();
	RespostasSelecionadas.removeAll();
	
	var q:QuestaoEntity = ArtefatosList[PerguntaAtualIndex] as QuestaoEntity;
	
	GetTrechosQuestao.token = ws_InspectorX.GetTrechosDefeito(q.Q_ID);
	GetQuestoesTaxonomia.token = ws_InspectorX.GetQuestaoTaxonomia(q.Q_ID);
	
	txa_QuestoesDefectCrawler.htmlText = q.Q_XML;
}

private function getItemTaxonomia(id:int):ItemTaxonomiaEntity
{
	for each(var itemTax:ItemTaxonomiaEntity in RespostaPopUp.ItemTaxnomiaAtual)
	{
		if(itemTax.ID==id)
			return itemTax;
	}
	return null;
}

private function setQuestaoTextArea():void
{
	with (txa_QuestoesDefectCrawler) 
	{
		multiline = true;
		
		wordWrap = true;
		condenseWhite = true;
		if(NivelDificuldade == 0)
			selectable = false;
		else
			selectable = true;
	}
	if(NivelDificuldade!=FACIL)
		txa_QuestoesDefectCrawler.addEventListener(MouseEvent.MOUSE_UP,onMouseUp);
}

//ResultHandlers Section

protected function SetQuestaoAcerto_resultHandler(e:ResultEvent):void
{
	if(!e.result)
		Alert.show("A questão não foi computada!");
}

protected function EncerrarPartidaResult_resultHandler(e:ResultEvent):void
{
	this.currentState = "ResultadoFinal";
}

protected function GetTrechosQuestao_resultHandler(e:ResultEvent):void
{
	Questao_Trechos_DefeitoList_DC = ArrayCollection(e.result);
}

protected function GetQuestaoItemTax_resultHandler(e:ResultEvent):void
{
	var itemTaxonomiaTemp:ItemTaxonomiaEntity = e.result as ItemTaxonomiaEntity;
	itemTaxonomia=itemTaxonomiaTemp;
}

protected function GetQuestoesTaxonomia_resultHandler(e:ResultEvent):void
{
	var t:TaxonomiaEntity = e.result as TaxonomiaEntity;
	RespostaPopUp.questaoTaxonomiaId=t.ID;
}

protected function IniciarPartida_resultHandler(e:ResultEvent):void
{
	PartidaAtualId = e.result as int;
}
