import mx.rpc.events.ResultEvent;
import flash.events.MouseEvent;
import mx.controls.Alert;
import mx.events.FlexEvent;

protected function btnVoltar_clickHandler(event:MouseEvent):void
{
	this.currentState = "Dificuldade";
}

protected function dataGrid_creationCompleteHandler(event:FlexEvent):void
{
	//GetUsersRankResult.token = wSCodeInspector.GetUsersRank(nivielDificuldade);
	Alert.show("Aqui deveria ocorrer o rank");
}