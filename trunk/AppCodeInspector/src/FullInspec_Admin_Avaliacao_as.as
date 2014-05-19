import CodeInspector.CSS;

import Domain.Questao;
import Domain.TrechoResposta;
import Domain.TrechoRespostaSimple;
import Domain.Usuario;

import flash.events.Event;
import flash.events.MouseEvent;
import flash.utils.Timer;

import flashx.textLayout.elements.TextFlow;

import mx.collections.ArrayCollection;
import mx.controls.Alert;
import mx.rpc.events.ResultEvent;

import valueObjects.PartidaEntity;
import valueObjects.QuestaoEntity;
import valueObjects.TrechoDefeitoEntity;
import valueObjects.TrechoRespostaEntity;
import valueObjects.UsuarioEntity;


private var PartidaEmAvaliacao:PartidaEntity;
private var QuestaoEmAvaliacao:QuestaoEntity;
private var trechosRespostaList:ArrayCollection;


protected function btn_ConfirmadoArtefatoAval_clickHandler(event:MouseEvent):void
{
	if(dgr_QuestaoTrechos.selectedItem!=null)
	{
		var tr:TrechoResposta = dgr_QuestaoTrechos.selectedItem as TrechoResposta;
		tr.pontos = 1;
		setTrechoRespostaAvalResult.token = ws_InspectorX.setTrechoRespostaAval(tr.TRECHO_RESPOSTA,tr.Q_ID,tr.IT_ID, PartidaEmAvaliacao.P_ID,tr.pontos);
		Alert.show("Each inspector that found this defect will receive 1 point!");
	}
}

protected function btn_RecusadoArtefatoAval_clickHandler(event:MouseEvent):void
{
	if(dgr_QuestaoTrechos.selectedItem!=null)
	{
		var tr:TrechoResposta = dgr_QuestaoTrechos.selectedItem as TrechoResposta;
		tr.pontos = 0;
		setTrechoRespostaAvalResult.token = ws_InspectorX.setTrechoRespostaAval(tr.TRECHO_RESPOSTA,tr.Q_ID,tr.IT_ID, PartidaEmAvaliacao.P_ID,tr.pontos);
		
		Alert.show("The selected code line was classified as a false-positive.");
	}
}


private function cleanDiscriminacao():void
{
	lst_InspetoresAval.dataProvider= new ArrayCollection();
	dgr_QuestaoTrechos.dataProvider = new ArrayCollection();
	txa_ArtefatoAval.htmlText="";
}

protected function dgr_QuestaoTrechos_clickHandler(event:MouseEvent):void
{
	if(dgr_QuestaoTrechos.selectedItem!=null)
	{
		var tr:TrechoResposta = dgr_QuestaoTrechos.selectedItem as TrechoResposta;
		var trs:TrechoRespostaSimple = new TrechoRespostaSimple();
		trs.IT_ID = tr.IT_ID;
		trs.TRECHO_RESPOSTA = tr.TRECHO_RESPOSTA;
		
		getUsuarioByTrechoResult.token = ws_InspectorX.getUsuarioByTrecho(tr.TRECHO_RESPOSTA,tr.IT_ID,PartidaEmAvaliacao.P_ID);
	}
}

protected function btn_VoltarAval_clickHandler(event:MouseEvent):void
{
	cleanDiscriminacao();
	
	this.currentState="FullInspec_Admin";
	getPartidasInspectorSelecaoResult.token = ws_InspectorX.getPartidasInspector(UsuarioTipoID);
	GetPartidasResultAval.token = ws_InspectorX.getPartidas(UsuarioTipoID);
}

protected function lst_ArtefatosAval_clickHandler(event:MouseEvent):void
{
	if (lst_ArtefatosAval.selectedItem!=null) 
	{
		cleanDiscriminacao();
		QuestaoEmAvaliacao = lst_ArtefatosAval.selectedItem as QuestaoEntity;
		txa_ArtefatoAval.htmlText = QuestaoEmAvaliacao.Q_XML;
		
		css = new CSS();
		css.Load("Arquivos/styles.css");
		css.addEventListener("CSS_Loaded", cssAvalDone);
		
		getTrechosArtefatoResult.token = ws_InspectorX.getTrechosArtefato(QuestaoEmAvaliacao.Q_ID,PartidaEmAvaliacao.P_ID);
	}
}

private function cssAvalDone(e:Event):void 
{
	txa_ArtefatoAval.styleSheet = css.sheet;
}


private function verificarAvaliacao(isItCorrect:Boolean):void
{
	var pontos:int=0;
	var pontuaModerador:int = 1;
	
	for each(var trechoQuestao:TrechoDefeitoEntity in Questao_Trechos_DefeitoList_DC)
	{	
		for each(var trechoResposta:TrechoResposta in trechosRespostaList)
		{
			if(QuestaoEmAvaliacao.Q_Nivel_Dificuldade==FACIL)
			{
				if(trechoQuestao.IT_ID==trechoResposta.IT_ID)
					++pontos;
			}
			else
			{
				var temp:TrechoDefeitoEntity = new TrechoDefeitoEntity();
				temp.IT_ID = trechoResposta.IT_ID;
				temp.Conteudo = trechoResposta.TRECHO_RESPOSTA;
				pontos = verificarRespostaAvalInterDifi(trechoQuestao,temp);
			}
		}
	}
	
	if(isItCorrect==true && pontos==Questao_Trechos_DefeitoList_DC.length)
	{
		Alert.show("As identifiçãoes do(s) defeito(s) do artefato estavam corretas.","Correto!");
		setQuestaoAvaliadaResult.token = ws_InspectorX.setQuestaoAvaliada(QuestaoEmAvaliacao.Q_ID, PartidaEmAvaliacao.P_ID, pontuaModerador);
	}
	else if(isItCorrect==true && pontos!=Questao_Trechos_DefeitoList_DC.length)
	{
		Alert.show("Desculpe, mas a identificação do defeito neste artefato era um falso(s) positivo(s).","Ops! Você errou!");
		setQuestaoAvaliadaResult.token = ws_InspectorX.setQuestaoAvaliada(QuestaoEmAvaliacao.Q_ID, PartidaEmAvaliacao.P_ID, pontuaModerador);
	}
	else if (isItCorrect==false && pontos!=Questao_Trechos_DefeitoList_DC.length)
	{
		Alert.show("As identifiçãoes do(s) defeito(s) do artefato eram falso(s) positivo(s).","Correto!");
		setQuestaoAvaliadaResult.token = ws_InspectorX.setQuestaoAvaliada(QuestaoEmAvaliacao.Q_ID, PartidaEmAvaliacao.P_ID, pontuaModerador);
	}
	else if (isItCorrect==false && pontos==Questao_Trechos_DefeitoList_DC.length)
	{
		Alert.show("Desculpe, mas a identificação do(s) defeito(s) neste artefato eram um positivo.","Ops! Você errou!");
		setQuestaoAvaliadaResult.token = ws_InspectorX.setQuestaoAvaliada(QuestaoEmAvaliacao.Q_ID, PartidaAtualId, pontuaModerador);
	}
}

private function verificarRespostaAvalInterDifi(trechoQuestao:TrechoDefeitoEntity,trechoResposta:TrechoDefeitoEntity):int
{
	var pontos:int = 0;
	var mensagem:String = "";
	var trechoCerto:Boolean = false;
	var classificacaoCerta:Boolean = false;
	
	var teste:TextFlow = new TextFlow();
	
	var tq:String = trim(trechoQuestao.Conteudo);
	var tr:String = trim(trechoResposta.Conteudo);
	
	if(tq==tr)
	{
		++pontos;
		mensagem=mensagem+ "O inspetor identificou o trecho com defeito corretamente.\n";
		trechoCerto=true;
		if(trechoQuestao.IT_ID==trechoResposta.IT_ID)
		{
			++pontos;
			mensagem=mensagem+ "O inspetor classificou o defeito corretamente.";
			classificacaoCerta = true;
		}
		Alert.show(mensagem.toString(),"Análise do artefato");
	}
	
	var alertTitle:String = "";
	if (!classificacaoCerta&&trechoCerto)
	{
		var erro: String;
		alertTitle = "O inspetor errou a classificação do defeito.";
		erro = setErrorMessage(trechoQuestao.Conteudo,trechoQuestao.itemTax.Nome,trechoQuestao.Explicacao);
		Alert.show(erro,"Análise do artefato");
	} else if (!trechoCerto)
	{
		var erro2: String;
		alertTitle = "O inspetor" +
			". a identificação do trecho";
		erro2 = setErrorMessage(trechoQuestao.Conteudo,trechoQuestao.itemTax.Nome,trechoQuestao.Explicacao);
		Alert.show(erro2,"Análise do artefato");
	}
	return pontos;
}


protected function GetArtefatosAvalResult_resultHandler(e:ResultEvent):void
{
	var questoesList:ArrayCollection = ArrayCollection(e.result);
	lst_ArtefatosAval.dataProvider=questoesList;
}

protected function GetUsersByArtefatoResult_resultHandler(e:ResultEvent):void
{
	var inspetoresList:ArrayCollection = ArrayCollection(e.result);
	lst_InspetoresAval.dataProvider=inspetoresList;
}

protected function getArtefatosInspecionadosResult_resultHandler(e:ResultEvent):void
{
	var artefatosInspecionados:ArrayCollection = Questao.toQuestaoCollection(ArrayCollection(e.result));
	lst_ArtefatosAval.dataProvider=artefatosInspecionados;
}

protected function setQuestaoAvaliadaResult_resultHandler(e:ResultEvent):void
{
	var user:UsuarioEntity = lst_InspetoresAval.selectedItem as UsuarioEntity;
	getArtefatosInspecionadosResult.token = ws_InspectorX.getArtefatosInspecionados(user.U_ID, PartidaEmAvaliacao.P_ID);
	
	dgr_QuestaoTrechos.dataProvider=new ArrayCollection();
	txa_ArtefatoAval.htmlText = "";
}

protected function getTrechosArtefatoResult_resultHandler(e:ResultEvent):void
{
	trechosRespostaList = TrechoResposta.toTrechoRespostaCollection(ArrayCollection(e.result));
	dgr_QuestaoTrechos.dataProvider= trechosRespostaList;
	if(trechosRespostaList.length==0)
	{
		txa_ArtefatoAval.htmlText ="";
	}
}

protected function GetQuestoesTrechosResult_resultHandler(e:ResultEvent):void
{
	trechosRespostaList = Questao.toQuestaoCollection(ArrayCollection(e.result));
	lst_ArtefatosAval.dataProvider=trechosRespostaList;
}

protected function GetTrechoRespostasResult_resultHandler(e:ResultEvent):void
{	
	trechosRespostaList = TrechoResposta.toTrechoRespostaCollection(ArrayCollection(e.result));
	
	if(trechosRespostaList.length==0)
		Alert.show("Este artefato ainda não foi inspecionado");
	else
		dgr_QuestaoTrechos.dataProvider=trechosRespostaList;
}

protected function getUsuarioByTrechoResult_resultHandler(e:ResultEvent):void
{
	var usuarios:ArrayCollection = Usuario.toUsuarioCollection(ArrayCollection(e.result));
	lst_InspetoresAval.dataProvider=usuarios;
}

protected function setTrechoRespostaAvalResult_resultHandler(e:ResultEvent):void
{
	getTrechosArtefatoResult.token = ws_InspectorX.getTrechosArtefato(QuestaoEmAvaliacao.Q_ID,PartidaEmAvaliacao.P_ID);
	GetQuestoesTrechosResult.token = ws_InspectorX.GetQuestoesTrechos(PartidaEmAvaliacao.P_ID);
	lst_InspetoresAval.dataProvider= new ArrayCollection();
}

