import Domain.Questao;
import Domain.TrechoResposta;
import CodeInspector.CSS;
import flash.events.MouseEvent;
import flash.events.Event;

import mx.collections.ArrayCollection;
import mx.controls.Alert;
import mx.rpc.events.ResultEvent;
import flashx.textLayout.elements.TextFlow;

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
	verificarAvaliacao(true);
}

protected function btn_RecusadoArtefatoAval_clickHandler(event:MouseEvent):void
{
	verificarAvaliacao(false);
}

protected function btn_VoltarAval_clickHandler(event:MouseEvent):void
{
	this.currentState="FullInspec_Admin";
}

protected function lst_ArtefatosAval_clickHandler(event:MouseEvent):void
{
	if (lst_ArtefatosAval.selectedItem!=null) 
	{
		QuestaoEmAvaliacao = lst_ArtefatosAval.selectedItem as QuestaoEntity;
		txa_ArtefatoAval.htmlText = QuestaoEmAvaliacao.Q_XML;
		var user:UsuarioEntity  = lst_InspetoresAval.selectedItem as UsuarioEntity;
		GetTrechoRespostasResult.token = ws_InspectorX.getTrechoRespostas(user.U_ID, PartidaEmAvaliacao.P_ID, QuestaoEmAvaliacao.Q_ID);
		GetTrechosQuestao.token = ws_InspectorX.GetTrechosDefeito(QuestaoEmAvaliacao.Q_ID);
		css = new CSS();
		css.Load("Arquivos/styles.css");
		css.addEventListener("CSS_Loaded", cssAvalDone);
	}
}

private function cssAvalDone(e:Event):void 
{
	txa_ArtefatoAval.styleSheet = css.sheet;
}

protected function lst_InspetoresAval_clickHandler(event:MouseEvent):void
{
	if (lst_InspetoresAval.selectedItem!=null) 
	{
		var user:UsuarioEntity = lst_InspetoresAval.selectedItem as UsuarioEntity;
		getArtefatosInspecionadosResult.token = ws_InspectorX.getArtefatosInspecionados(user.U_ID, PartidaEmAvaliacao.P_ID);
	}
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
		erro = setErrorMessage(trechoQuestao.Conteudo,getItemTaxonomia(trechoQuestao.IT_ID).Nome,trechoQuestao.Explicacao);
		Alert.show(erro,"Análise do artefato");
	} else if (!trechoCerto)
	{
		var erro2: String;
		alertTitle = "O inspetor a identificação do trecho";
		erro2 = setErrorMessage(trechoQuestao.Conteudo,getItemTaxonomia(trechoQuestao.IT_ID).Nome,trechoQuestao.Explicacao);
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

protected function GetTrechoRespostasResult_resultHandler(e:ResultEvent):void
{	
	trechosRespostaList = TrechoResposta.toTrechoRespostaCollection(ArrayCollection(e.result));
	
	if(trechosRespostaList.length==0)
		Alert.show("Este Artefato ainda não foi inspecionado");
	dgr_QuestaoTrechos.dataProvider=trechosRespostaList;
}