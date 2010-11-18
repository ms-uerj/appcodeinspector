import mx.events.CloseEvent;
import mx.managers.PopUpManager;

[Bindable]
public var selectedIndex:int =0;

protected function btnConfirmarMotivoErro_clickHandler(event:MouseEvent):void
{
	AppCodeInspector.respostaCelecionada = cbResposta.selectedIndex;
	
	selectedIndex = cbResposta.selectedIndex;
	
	Close();
}

protected function btnCancelarMotivoErro_clickHandler(event:MouseEvent):void
{
	Close();
}

protected function Close():void
{
	PopUpManager.removePopUp(this);
}