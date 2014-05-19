import CodeInspector.CSS;

import Domain.Partida;
import Domain.Questao;
import Domain.TrechoDefeito;
import Domain.TrechoResposta;
import Domain.TrechoRespostaSimple;

import flash.events.Event;
import flash.events.MouseEvent;
import flash.events.TextEvent;

import mx.collections.ArrayCollection;
import mx.collections.ArrayList;
import mx.controls.Alert;
import mx.controls.DataGrid;
import mx.controls.List;
import mx.controls.dataGridClasses.DataGridColumn;
import mx.controls.textClasses.TextRange;
import mx.events.StateChangeEvent;
import mx.managers.PopUpManager;
import mx.rpc.events.ResultEvent;

import valueObjects.ItemTaxonomiaEntity;
import valueObjects.QuestaoEntity;
import valueObjects.TrechoDefeitoEntity;
import valueObjects.TrechoRespostaEntity;

private var Css_FullInspec:CSS;

private var Trechos_DefeitoList_FI:ArrayCollection;
private var QuestaoAtualId:int;
private var PartidasInspetor:ArrayCollection;
public static var dtgTrechosInspetor:mx.controls.DataGrid;
private var QuestaoAtualListaIndex:int;
private var initQuestaoTempo: Date;

private var onlyTxaViewFlag: Boolean;

protected function initFullInspect():void
{
	set_Artefato_Inspector_TextArea();
	setQuestaoLayout(false);
	Css_FullInspec = new CSS();
	Css_FullInspec.Load("Arquivos/styles.css");
	Css_FullInspec.addEventListener("CSS_Loaded", cssDone_FI);
	lst_MinhasPartidas_Inspector.dataProvider = PartidasInspetor;
	setDatagrid();
}

protected function setDatagrid():void
{
	dtgTrechosInspetor = new mx.controls.DataGrid();
	dtgTrechosInspetor.x=129;
	dtgTrechosInspetor.y=0;
	dtgTrechosInspetor.width=464;
	dtgTrechosInspetor.height=95;
	dtgTrechosInspetor.rowCount=4;
	dtgTrechosInspetor.borderMetrics.bottom=0;
	dtgTrechosInspetor.borderMetrics.left=0;
	dtgTrechosInspetor.borderMetrics.right=0;
	dtgTrechosInspetor.borderMetrics.top=0;
	
	var dgc1: DataGridColumn = new DataGridColumn();
	dgc1.dataField="TRECHO_RESPOSTA";
	dgc1.headerText="Lines";
	
	var dgc2: DataGridColumn = new DataGridColumn();
	dgc2.dataField="classificao";
	dgc2.headerText="Classification";
	
	var cols:Array = new Array();
	cols.push(dgc1);
	cols.push(dgc2);
	
	dtgTrechosInspetor.columns = cols;
	dtgTrechosInspetor.dataProvider = new ArrayCollection();
	pnlTrechosSelecionados.addElement(dtgTrechosInspetor);
}

protected function btnRemoverTrecho_clickHandler(event:MouseEvent):void
{
	if(dtgTrechosInspetor.selectedItem!=null)
		dtgTrechosInspetor.dataProvider.removeItemAt(dtgTrechosInspetor.selectedIndex);
	else
		Alert.show("Please, highlight a code line for this action.");
}

protected function btnReclassificar_clickHandler(event:MouseEvent):void
{
	if(dtgTrechosInspetor.selectedItem!=null)
	{
		RespostaPopUp.nivelDificuldade = NivelDificuldade;
		RespostaPopUp.reclassificar = true;
		PopUpManager.addPopUp(RespostaPopUp,this,true);
		PopUpManager.centerPopUp(RespostaPopUp);
	}
	else
		Alert.show("Please, highlight a code line for this action.");
}

protected function btn_Registrar_FullInpec_clickHandler(event:MouseEvent):void
{
	if(dtgTrechosInspetor.dataProvider.length == 0)
	{
		Alert.show("Highlight and and classify a code defect before proceeding.");
		return;
	}
	else
	{
		verificarRespostas_FI();
		getArtefatosPendentesResult.token = ws_InspectorX.getArtefatosPendentes(UsuarioLogado.U_ID,PartidaAtualId);
		//lst_Artefatos_Inspector.dataProvider.removeItemAt(QuestaoAtualListaIndex);
		cleanCurrentQuestion();
		txa_Artefato_Inspector.visible=true;
		onlyTxaViewFlag=true;
	}
}

protected function btn_VoltarFullInspec_Inspector_clickHandler(event:MouseEvent):void
{
	this.currentState="JogoModoSelecao";
}

protected function lst_MinhasPartidas_Inspector_clickHandler(event:MouseEvent):void
{
	cleanCurrentQuestion();
	if (lst_MinhasPartidas_Inspector.selectedItem!=null) 
	{
		var partida:Partida = lst_MinhasPartidas_Inspector.selectedItem as Partida;
		lst_Artefatos_Inspector.dataProvider=new ArrayCollection();
		getArtefatosPendentesResult.token = ws_InspectorX.getArtefatosPendentes(UsuarioLogado.U_ID,partida.P_ID);
		PartidaAtualId = partida.P_ID;
		RespostasSelecionadas=new ArrayCollection();
		setQuestaoLayout(false);
	}
}

protected function lst_Artefatos_Inspector_clickHandler(event:MouseEvent):void
{
	cleanCurrentQuestion();
	if (lst_Artefatos_Inspector.selectedItem!=null) 
	{
		onlyTxaViewFlag=false;
		var questao:QuestaoEntity = lst_Artefatos_Inspector.selectedItem as QuestaoEntity;
		QuestaoAtualListaIndex = lst_Artefatos_Inspector.selectedIndex;
		txa_Artefato_Inspector.text="";
		txa_Artefato_Inspector.htmlText=questao.Q_XML;
		QuestaoAtualId=questao.Q_ID;
		NivelDificuldade=questao.Q_Nivel_Dificuldade;
		
		set_Artefato_Inspector_TextArea();
		
		if(questao.Q_Nivel_Dificuldade!=FACIL)
			txa_Artefato_Inspector.addEventListener(MouseEvent.MOUSE_UP,onMouseUp_FI);
			
		GetTrechosQuestao_FI.token = ws_InspectorX.GetTrechosDefeito(questao.Q_ID);
		txa_Artefato_Inspector.addEventListener(TextEvent.LINK, textEvent_FI);
		GetQuestoesTaxonomia.token = ws_InspectorX.GetQuestaoTaxonomia(questao.Q_ID);
		setQuestaoLayout(true);
		initQuestaoTempo = new Date();
	}
}

private function setQuestaoLayout(show:Boolean):void
{
	btnRemoverTrecho.enabled=show;
	btnReclassificar.enabled=show;
	txa_Artefato_Inspector.selectable=show;
	txa_Artefato_Inspector.visible = show;
	pnlTrechosSelecionados.visible = show;
	btn_Registrar_FullInpec.visible = show;
	btn_Registrar_FullInpec.enabled = show;
	btn_Registrar_FullInpec.includeInLayout=show;
}

protected function cleanCurrentQuestion():void
{
	dtgTrechosInspetor.dataProvider = new ArrayCollection();
	Trechos_DefeitoList_FI = new ArrayCollection();
}

private function onMouseUp_FI(evt:MouseEvent):void
{
//	if (dtgTrechosInspetor.dataProvider.length<Trechos_DefeitoList_FI.length)
//	{
	if(!onlyTxaViewFlag)
	{
		QuestaoSelectedText = new TextRange(txa_Artefato_Inspector,false,txa_Artefato_Inspector.selectionBeginIndex,txa_Artefato_Inspector.selectionEndIndex);
		var selLength:int = QuestaoSelectedText.endIndex - QuestaoSelectedText.beginIndex;
		RespostaPopUp.trechoSelecionado = new TextRange(txa_Artefato_Inspector,true).text;
		RespostaPopUp.reclassificar = false;
		if(selLength)
		{
			RespostaPopUp.nivelDificuldade = NivelDificuldade;
			PopUpManager.addPopUp(RespostaPopUp,this,true);
			PopUpManager.centerPopUp(RespostaPopUp);
		}
	}
//	}
//	else
//		Alert.show("Este artefato possui "+Trechos_DefeitoList_FI.length + " defeitos.");
}

protected function application1_currentStateChangingHandler(event:StateChangeEvent):void
{
	txa_Artefato_Inspector.htmlText="";
}


private function textEvent_FI(e:TextEvent):void 
{
	if(!onlyTxaViewFlag)
	{
		if(dtgTrechosInspetor.dataProvider.length<Trechos_DefeitoList_FI.length)
		{
			RespostaPopUp.nivelDificuldade = NivelDificuldade;
			RespostaPopUp.reclassificar = false;
			PopUpManager.addPopUp(RespostaPopUp,this,true);
			PopUpManager.centerPopUp(RespostaPopUp);
		}
		else
			Alert.show("This defect was already classified! If you want to change its classification, firstly remove it from the list.");
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
		txa_Artefato_Inspector.styleSheet = Css_FullInspec.sheet;
}

private function verificarRespostas_FI():void
{
	var endTime:Date = new Date();
	var duracao:Number = endTime.time - initQuestaoTempo.time;
	
	for each(var trechoQuestao:TrechoDefeitoEntity in Trechos_DefeitoList_FI)
	{
		//Marcando trechos de defeito, caso ele seja encontrado receberá 1 no método "verificarRespostaInterDifi"
		trechoQuestao.D_ID=0;
		for each(var trechoResposta:TrechoRespostaEntity in dtgTrechosInspetor.dataProvider)
		{
			if(NivelDificuldade==FACIL)
			{
				trechoResposta.Q_ID = QuestaoAtualId;
				trechoResposta.TRECHO_RESPOSTA="-";
				trechoResposta.pontos=0;
				if(trechoQuestao.IT_ID==trechoResposta.IT_ID)
				{
					trechoResposta.pontos=1;
					Alert.show("Your defect classification is righ.","Congratulations!");
				}
				else
				{
					var erro: String;
					erro = setErrorMessage(trechoQuestao.Conteudo,getItemTaxonomia(trechoQuestao.IT_ID).Nome,trechoQuestao.Explicacao);
					Alert.show(erro);
				}
			}
			else
				verificarRespostaInterDifi(trechoQuestao,trechoResposta);
		}
	}
	
	setAnaliseRespostas();
	setTrechoRespostaResult.token = ws_InspectorX.setTrechoResposta(createTrechoRespostaCol(),UsuarioLogado.U_ID,PartidaAtualId,duracao);
	setQuestaoLayout(false);
}

private function setAnaliseRespostas():void
{
	if(NivelDificuldade!=FACIL)
	{
		for each(var trechoResposta:TrechoRespostaEntity in dtgTrechosInspetor.dataProvider)
		{
			if(trechoResposta.pontos==0)
			{
				var mensagem:String = "";
				mensagem=mensagem.concat("\nThis code line was not registered as a defect, wait discrimination stage to discuss with your colleagues.\n\n");
				mensagem=mensagem.concat("Selected line:\n");
				mensagem=mensagem.concat(trechoResposta.TRECHO_RESPOSTA+"\n");
				mensagem=mensagem.concat("Selected classification: "+trechoResposta.classificao+"\n\n" );
				Alert.show(mensagem,"Attention")
			}
		}
		for each(var trechoQuestao:TrechoDefeitoEntity in Trechos_DefeitoList_FI)
		{
			if(trechoQuestao.D_ID==0)
			{
				var mensagem2:String = "";
				mensagem2=mensagem2.concat("\nLine:\n");
				mensagem2=mensagem2.concat(trechoQuestao.Conteudo+"\n");
				mensagem2=mensagem2.concat("Classification: "+trechoQuestao.classificao+"\n\n" );
				mensagem2=mensagem2.concat("Defect explanation:\n");
				mensagem2=mensagem2.concat(trechoQuestao.Explicacao);
				Alert.show(mensagem2,"Attention - Defect not found");
			}
		}
	}
}

private function createTrechoRespostaCol ():ArrayCollection
{
	var trechoRespostas:ArrayCollection = new ArrayCollection();
	for each(var tr:TrechoRespostaEntity in dtgTrechosInspetor.dataProvider)
	{
		var trechoR:TrechoRespostaSimple = new TrechoRespostaSimple();
		trechoR.classificao=tr.classificao;
		trechoR.IT_ID = tr.IT_ID;
		trechoR.Q_ID = tr.Q_ID;
		trechoR.pontos = tr.pontos;
		trechoR.TR_ID =0;
		trechoR.UP_ID =0;
		trechoR.TRECHO_RESPOSTA = tr.TRECHO_RESPOSTA;
		trechoR.trModeradorAval=0;
		trechoRespostas.addItem(trechoR);
	}
	
	return trechoRespostas;
}

//Result handlers
protected function setTrechoRespostaResult_resultHandler(e:ResultEvent):void
{
	getArtefatosPendentesResult.token = ws_InspectorX.getArtefatosPendentes(UsuarioLogado.U_ID,PartidaAtualId);
}

protected function getArtefatosPendentesResult_resultHandler(e:ResultEvent):void
{
	var partidasInspector:ArrayCollection = Questao.toQuestaoCollection(ArrayCollection(e.result));
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