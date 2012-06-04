import CodeInspector.TXT;

import Util.InspectorXUserEnum;

import flash.events.MouseEvent;
import mx.rpc.events.ResultEvent;
import mx.collections.ArrayCollection;

protected function btn_ModeradorPapel_mouseOverHandler(event:MouseEvent):void
{
	txa_JogoModoTuturial.visible = true;
	
	txt_JogoTipoTutorial = new TXT();
	txt_JogoTipoTutorial.Load("Arquivos/Tutorial/ModeradorPapel.txt");
	txt_JogoTipoTutorial.addEventListener("TXT_Loaded",txt_JogoTipoTutorial_TXT_Loaded);
}

protected function btn_ModeradorPapel_mouseOutHandler(event:MouseEvent):void
{
	txa_JogoModoTuturial.visible = false;
}

protected function btn_InspetorPapel_mouseOverHandler(event:MouseEvent):void
{
	txa_JogoModoTuturial.visible = true;
	
	txt_JogoTipoTutorial = new TXT();
	txt_JogoTipoTutorial.Load("Arquivos/Tutorial/InspetorPapel.txt");
	txt_JogoTipoTutorial.addEventListener("TXT_Loaded",txt_JogoTipoTutorial_TXT_Loaded);
}

protected function btn_InspetorPapel_mouseOutHandler(event:MouseEvent):void
{
	txa_JogoModoTuturial.visible = false;
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

