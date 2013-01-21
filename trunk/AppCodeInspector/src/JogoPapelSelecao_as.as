import CodeInspector.TXT;

import Util.InspectorXUserEnum;

import flash.events.MouseEvent;
import flash.sampler.getMemberNames;
import Domain.Partida;
import flash.events.Event;
import mx.collections.ArrayCollection;
import mx.rpc.events.ResultEvent;


protected function txtProcessoSauerTXT_Loaded(event:Event):void
{
	txaProcessoSauer.text = txt_JogoTipoTutorial.Texto;
}

protected function txtJogoPapelTXT_Loaded(event:Event):void
{
	txa_JogoPapel.text = txt_JogoTipoTutorial.Texto;
}

protected function btnPlanejamento_clickHandler(event:MouseEvent):void
{
	rdbModerador.selected=false;
	rdbInspetor.selected=false;
	btnPlanejamento.enabled = false;
	this.currentState = "FullInspec_Admin";
	lst_Inspetores.dataProvider = new ArrayCollection();
	lst_Artefato.dataProvider = new ArrayCollection();

	btn_CriarPartida.includeInLayout = true;
	rdg_PartidaInspect.includeInLayout = true;
	btn_DeletarPartidaAdmin.includeInLayout = true;
	btn_AvaliarPartida.includeInLayout = false;
	
	btn_CriarPartida.visible = true;
	rdg_PartidaInspect.visible = true;
	btn_DeletarPartidaAdmin.visible = true;
	btn_AvaliarPartida.visible = false;
	
	lst_MinhasPartidas.dataProvider = MinhasPartidas;
}

protected function btnDeteccao_clickHandler(event:MouseEvent):void
{
	rdbModerador.selected=false;
	rdbInspetor.selected=false;
	btnDeteccao.enabled = false;
	this.currentState="FullInspec_Inspector";
	initFullInspect();
}

protected function btnDiscrimincao_clickHandler(event:MouseEvent):void
{
	rdbModerador.selected=false;
	rdbInspetor.selected=false;
	btnDiscrimincao.enabled = false;
	this.currentState = "FullInspec_Admin";
	lst_Inspetores.dataProvider = new ArrayCollection();
	lst_Artefato.dataProvider = new ArrayCollection();

	btn_CriarPartida.includeInLayout =false;
	rdg_PartidaInspect.includeInLayout =false;
	btn_DeletarPartidaAdmin.includeInLayout =false;
	btn_AvaliarPartida.includeInLayout=true;
	
	btn_CriarPartida.visible =false;
	rdg_PartidaInspect.visible =false;
	btn_DeletarPartidaAdmin.visible =false;
	btn_AvaliarPartida.visible=true;
	
	lst_MinhasPartidas.dataProvider = MinhasPartidas;
}

protected function rdbModerador_clickHandler(event:MouseEvent):void
{
	setModeradorLayout();
}

private function setModeradorLayout():void
{
	txa_JogoPapel.visible = true;
	
	txt_JogoTipoTutorial = new TXT();
	txt_JogoTipoTutorial.Load("Arquivos/Tutorial/ModeradorPapel.txt");
	txt_JogoTipoTutorial.addEventListener("TXT_Loaded",txtJogoPapelTXT_Loaded);
	
	btnPlanejamento.enabled = true;
	btnDeteccao.enabled = false;
	
	GetPartidasResultAval.token = ws_InspectorX.getPartidas(UsuarioTipoID);
}

protected function rdbInspetor_clickHandler(event:MouseEvent):void
{
	setInspetorLayout();
}

private function setInspetorLayout():void
{
	txa_JogoPapel.visible = true;
	
	txt_JogoTipoTutorial = new TXT();
	txt_JogoTipoTutorial.Load("Arquivos/Tutorial/InspetorPapel.txt");
	txt_JogoTipoTutorial.addEventListener("TXT_Loaded",txtJogoPapelTXT_Loaded);
	
	btnPlanejamento.enabled = false;
	btnDiscrimincao.enabled = false;
	
	getPartidasInspectorSelecaoResult.token = ws_InspectorX.getPartidasInspector(UsuarioTipoID);
}

protected function GetPartidasResultAval_resultHandler(e:ResultEvent):void
{
	MinhasPartidas = Partida.toPartidaCollection(ArrayCollection(e.result));
	btnDeteccao.enabled=false;

	if (MinhasPartidas.length!=0)
	{
		btnDiscrimincao.enabled=true;
	}
}

protected function getPartidasInspectorSelecaoResult_resultHandler(e:ResultEvent):void
{
	PartidasInspetor = Partida.toPartidaCollection(ArrayCollection(e.result));
	btnDiscrimincao.enabled=false;
	
	if (PartidasInspetor.length!=0)
	{
		btnDeteccao.enabled=true;
	}
}

protected function btnHideSauerTutorial_mouseOutHandler(event:MouseEvent):void
{
	txaProcessoSauer.visible = false;
}

protected function btnPlanejamentoHelp_mouseOverHandler(event:MouseEvent):void
{
	txaProcessoSauer.visible = true;
	
	txt_JogoTipoTutorial = new TXT();
	txt_JogoTipoTutorial.Load("Arquivos/Tutorial/ProcessoPlanejamento.txt");
	txt_JogoTipoTutorial.addEventListener("TXT_Loaded",txtProcessoSauerTXT_Loaded);
}

protected function btnDetecacaoHelp_mouseOverHandler(event:MouseEvent):void
{
	txaProcessoSauer.visible = true;
	
	txt_JogoTipoTutorial = new TXT();
	txt_JogoTipoTutorial.Load("Arquivos/Tutorial/ProcessoDeteccao.txt");
	txt_JogoTipoTutorial.addEventListener("TXT_Loaded",txtProcessoSauerTXT_Loaded);
}


protected function btnSelecaoHelp_mouseOverHandler(event:MouseEvent):void
{
	txaProcessoSauer.visible = true;
	
	txt_JogoTipoTutorial = new TXT();
	txt_JogoTipoTutorial.Load("Arquivos/Tutorial/ProcessoColecao.txt");
	txt_JogoTipoTutorial.addEventListener("TXT_Loaded",txtProcessoSauerTXT_Loaded);
}



protected function btnDiscrimincaoHelp_mouseOverHandler(event:MouseEvent):void
{
	txaProcessoSauer.visible = true;
	
	txt_JogoTipoTutorial = new TXT();
	txt_JogoTipoTutorial.Load("Arquivos/Tutorial/ProcessoDiscriminacao.txt");
	txt_JogoTipoTutorial.addEventListener("TXT_Loaded",txtProcessoSauerTXT_Loaded);
}


protected function btnRetrabalhoHelp_mouseOverHandler(event:MouseEvent):void
{
	txaProcessoSauer.visible = true;
	
	txt_JogoTipoTutorial = new TXT();
	txt_JogoTipoTutorial.Load("Arquivos/Tutorial/ProcessoRetrabalho.txt");
	txt_JogoTipoTutorial.addEventListener("TXT_Loaded",txtProcessoSauerTXT_Loaded);
}


protected function btnContinuacaoHelp_mouseOverHandler(event:MouseEvent):void
{
	txaProcessoSauer.visible = true;
	
	txt_JogoTipoTutorial = new TXT();
	txt_JogoTipoTutorial.Load("Arquivos/Tutorial/ProcessoContinuacao.txt");
	txt_JogoTipoTutorial.addEventListener("TXT_Loaded",txtProcessoSauerTXT_Loaded);
}


protected function btn_ModeradorPapel_clickHandler(event:MouseEvent):void
{
	if(UsuarioTipoID!=0)
	{
		this.currentState = "FullInspec_Admin";
		GetPartidasResult.token = ws_InspectorX.getPartidas(UsuarioTipoID);
		lst_Inspetores.dataProvider = new ArrayCollection();
		lst_Artefato.dataProvider = new ArrayCollection();
		lst_MinhasPartidas.dataProvider = new ArrayCollection();
	}
}

protected function btn_InspetorPapel_clickHandler(event:MouseEvent):void
{
	if (UsuarioTipoID!=0) 
	{
		this.currentState="FullInspec_Inspector";
		getPartidasInspectorResult.token = ws_InspectorX.getPartidasInspector(UsuarioTipoID);
		initFullInspect();
	}
}

protected function btn_VoltarSelPapel_clickHandler(event:MouseEvent):void
{
  this.currentState="JogoModoSelecao";
}