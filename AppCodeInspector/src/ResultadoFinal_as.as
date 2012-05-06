import mx.rpc.events.ResultEvent;
import flash.events.MouseEvent;
import mx.collections.ArrayCollection;
import mx.controls.Alert;
import mx.events.FlexEvent;

protected function btnVoltar_clickHandler(event:MouseEvent):void
{
	this.currentState = "Login";
	dtg_UsersRank.dataProvider=emptyArray;
}

protected function dataGrid_creationCompleteHandler(event:FlexEvent):void
{
	GetUsersRankResult.token = ws_InspectorX.GetUsersRank(NivelDificuldade);
}

protected function GetUsersRankResult_resultHandler(e:ResultEvent):void
{
	dtg_UsersRank.dataProvider=ArrayCollection(e.result);
}