import flash.events.MouseEvent;
import flash.events.Event;
import mx.controls.Alert;
import mx.rpc.events.ResultEvent;

import valueObjects.UsuarioEntity;
import CodeInspector.TXT;

protected var txt_JogoTipoTutorial:TXT;


protected function btn_FullInspection_clickHandler(event:MouseEvent):void
{
	this.currentState="FullInspec_Inspector";
	getPartidasInspectorResult.token = ws_InspectorX.getPartidasInspector(UsuarioLogado.U_ID);
	initFullInspect();
	
}

protected function btn_FullInspection_mouseOverHandler(event:MouseEvent):void
{
	txa_JogoModoTuturial.visible = true;
	
	txt_JogoTipoTutorial = new TXT();
	txt_JogoTipoTutorial.Load("Arquivos/Tutorial/DefectCrawler.txt");
	txt_JogoTipoTutorial.addEventListener("TXT_Loaded",txt_JogoTipoTutorial_TXT_Loaded);
}

protected function btn_FullInspection_mouseOutHandler(event:MouseEvent):void
{
	txa_JogoModoTuturial.visible = false;
}

protected function btn_DefectCrawler_clickHandler(event:MouseEvent):void
{
	this.currentState = "ArtefatosSelecao";
	
	if(tiposArtefato==null)
	{
		GetTiposArtefato.token = ws_InspectorX.getTiposArtefatos();
	}
}

protected function btn_DefectCrawler_mouseOverHandler(event:MouseEvent):void
{
	txa_JogoModoTuturial.visible = true;
	
	txt_JogoTipoTutorial = new TXT();
	txt_JogoTipoTutorial.Load("Arquivos/Tutorial/FullInspectionProcess.txt");
	txt_JogoTipoTutorial.addEventListener("TXT_Loaded",txt_JogoTipoTutorial_TXT_Loaded);
}

protected function btn_DefectCrawler_mouseOutHandler(event:MouseEvent):void
{
	txa_JogoModoTuturial.visible = false;
}

protected function txt_JogoTipoTutorial_TXT_Loaded(event:Event):void
{
	txa_JogoModoTuturial.text = txt_JogoTipoTutorial.Texto;
}