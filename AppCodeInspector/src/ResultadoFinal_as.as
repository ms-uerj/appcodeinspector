import mx.rpc.events.ResultEvent;
import flash.events.MouseEvent;
import mx.collections.ArrayCollection;
import mx.controls.Alert;
import mx.events.FlexEvent;

protected function btnVoltar_clickHandler(event:MouseEvent):void
{
	this.currentState = "Login";
	dtg_UsersRank.dataProvider=new ArrayCollection();
}

protected function GetUsersRankResult_resultHandler(e:ResultEvent):void
{
	dtg_UsersRank.dataProvider=ArrayCollection(e.result);
}

protected function onEnterLoadingState():void
{
	GetUsersRankResult.token = ws_InspectorX.GetUsersRank(NivelDificuldade);
}