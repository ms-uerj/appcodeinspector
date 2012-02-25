import flash.events.MouseEvent;

protected function btnContinuarTutorial_clickHandler(event:MouseEvent):void
{
	this.currentState = "Perguntas";
	this.onLoad();
}