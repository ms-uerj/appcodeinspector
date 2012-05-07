import CodeInspector.CSS;

import Domain.Partida;
import Domain.TrechoDefeito;

import flash.events.Event;
import flash.events.MouseEvent;
import flash.events.TextEvent;

import mx.collections.ArrayCollection;
import mx.controls.Alert;
import mx.controls.textClasses.TextRange;
import mx.managers.PopUpManager;
import mx.rpc.events.ResultEvent;

import valueObjects.PartidaEntity;
import valueObjects.QuestaoEntity;
import valueObjects.TrechoDefeitoEntity;
import valueObjects.TrechoRespostaEntity;

private var Css_FullInspec:CSS;

private var Trechos_DefeitoList_FI:ArrayCollection;
private var QuestaoAtualId:int;

protected function initFullInspect():void
{
	set_Artefato_Inspector_TextArea();
	
	Css_FullInspec = new CSS();
	Css_FullInspec.Load("Arquivos/styles.css");
	Css_FullInspec.addEventListener("CSS_Loaded", cssDone_FI);
}

protected function btn_Registrar_FullInpec_clickHandler(event:MouseEvent):void
{
	if(RespostasSelecionadas.length == 0)
	{
		Alert.show("Encontre e selecione o motivo do defeito antes de prosseguir.");
		return;
	}
		
	else if(Trechos_DefeitoList_FI.length>RespostasSelecionadas.length)
	{
		Alert.show("Ainda faltam defeitos na questão.");
		return;
	}		
	else
	{
		verificarRespostas_FI();
		txa_Artefato_Inspector.text="";
		getArtefatosPendentesResult.token = ws_InspectorX.getArtefatosPendentes(UsuarioLogado.U_ID,PartidaAtualId);
		RespostasSelecionadas=new ArrayCollection();
	}	
}

protected function lst_MinhasPartidas_Inspector_clickHandler(event:MouseEvent):void
{
	if (lst_MinhasPartidas_Inspector.selectedItem!=null) 
	{
		var partida:Partida = lst_MinhasPartidas_Inspector.selectedItem as Partida;
		getArtefatosPendentesResult.token = ws_InspectorX.getArtefatosPendentes(UsuarioLogado.U_ID,partida.P_ID);
		PartidaAtualId = partida.P_ID;
		RespostasSelecionadas=new ArrayCollection();
	}
}

protected function lst_Artefatos_Inspector_clickHandler(event:MouseEvent):void
{
	if (lst_Artefatos_Inspector.selectedItem!=null) 
	{
		var questao:QuestaoEntity = lst_Artefatos_Inspector.selectedItem as QuestaoEntity;
		txa_Artefato_Inspector.text=questao.Q_XML;
		QuestaoAtualId=questao.Q_ID;
		NivelDificuldade=questao.Q_Nivel_Dificuldade;
		
		if(questao.Q_Nivel_Dificuldade!=FACIL)
			txa_Artefato_Inspector.addEventListener(MouseEvent.MOUSE_UP,onMouseUp_FI);
		
		GetTrechosQuestao_FI.token = ws_InspectorX.GetTrechosDefeito(questao.Q_ID);
		txa_Artefato_Inspector.addEventListener(TextEvent.LINK, textEvent_FI);
		
		GetQuestoesTaxonomia.token = ws_InspectorX.GetQuestaoTaxonomia(questao.Q_ID);
		RespostasSelecionadas=new ArrayCollection();
	}
}


private function onMouseUp_FI(evt:MouseEvent):void
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

private function textEvent_FI(e:TextEvent):void 
{
	if(Trechos_DefeitoList_FI.length>RespostasSelecionadas.length)
	{
		RespostaPopUp.nivelDificuldade = NivelDificuldade;
		RespostaPopUp.listRespostasSelecionadas=RespostasSelecionadas;
		PopUpManager.addPopUp(RespostaPopUp,this,true);
		PopUpManager.centerPopUp(RespostaPopUp);
	}
}

private function set_Artefato_Inspector_TextArea():void
{
	with (txa_Artefato_Inspector) 
	{
		multiline = true;
		
		wordWrap = true;
		condenseWhite = true;
		if(NivelDificuldade == 0)
			selectable = false;
		else
			selectable = true;
	}
}

private function cssDone_FI(e:Event):void 
{
	cssBool = true;
	allDone_FI();
}

private function allDone_FI():void	
{
	if(cssBool)
	{
		txa_Artefato_Inspector.styleSheet = Css_FullInspec.sheet;
	}
}

private function verificarRespostas_FI():void
{
	var pontos:int=0;
	for each(var qTrecho:TrechoDefeitoEntity in Trechos_DefeitoList_FI)
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

	setUpdateQuestaoAcertoResult.token = ws_InspectorX.setUpdateQuestaoAcerto(QuestaoAtualId, PartidaAtualId, pontos);
	setTrechoRespostaResult.token = ws_InspectorX.setTrechoResposta(createTrechoRespostaCol());
}

private function createTrechoRespostaCol():ArrayCollection
{
	var trechoRespostas:ArrayCollection = new ArrayCollection();
	for each(var trechoDefeito:TrechoDefeitoEntity in RespostasSelecionadas)
	{
		var trechoR:TrechoRespostaEntity = new TrechoRespostaEntity();
		trechoR.IT_ID=trechoDefeito.IT_ID;
		trechoR.Q_ID=QuestaoAtualId;
		if(trechoDefeito.Conteudo!=null)
			trechoR.TRECHO_RESPOSTA=trechoDefeito.Conteudo;
		trechoR.U_ID=UsuarioLogado.U_ID;
		trechoRespostas.addItem(trechoR);
	}
	return trechoRespostas;
}


//Result handlers
protected function getArtefatosPendentesResult_resultHandler(e:ResultEvent):void
{
	var partidasInspector:ArrayCollection = ArrayCollection(e.result);
	lst_Artefatos_Inspector.dataProvider=partidasInspector;
}

protected function getPartidasInspectorResult_resultHandler(e:ResultEvent):void
{
	var questoesList:ArrayCollection = Partida.toPartidaCollection(ArrayCollection(e.result));
	lst_MinhasPartidas_Inspector.dataProvider=questoesList;
}

protected function GetTrechosQuestao_FI_resultHandler(e:ResultEvent):void
{
	Trechos_DefeitoList_FI = ArrayCollection(e.result);
}

