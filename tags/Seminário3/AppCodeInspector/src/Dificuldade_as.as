import CodeInspector.TXT;

import flash.events.Event;

protected var txtTutorialFacil:TXT;

protected function btnFacil_clickHandler(event:MouseEvent):void
{
	txtTutorialFacil = new TXT();
	txtTutorialFacil.Load("Arquivos/Tutorial/Facil.txt");
	txtTutorialFacil.addEventListener("TXT_Loaded",txtTutorial_TXTLoaded);
	
}
protected function txtTutorial_TXTLoaded(event:Event):void
{
	this.currentState = "Tutorial";
	txtTutorial.text = txtTutorialFacil.Texto; 
}