import flash.events.MouseEvent;
import Util.InspectorXUserEnum;
import mx.rpc.events.ResultEvent;

protected function btnContinuarTutorial_clickHandler(event:MouseEvent):void
{
	IniciarPartida.token = ws_InspectorX.IniciarPartida(NivelDificuldade,UsuarioTipoID,InspectorXUserEnum.DefectCrawler);
}

protected function IniciarPartida_resultHandler(e:ResultEvent):void
{
	PartidaAtualId = e.result as int;
	this.currentState = "Perguntas";
	this.onLoad();
}

protected function btn_VoltarTutorial_clickHandler(event:MouseEvent):void
{
	this.currentState = "Dificuldade";
}