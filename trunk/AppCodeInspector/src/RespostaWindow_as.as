import mx.collections.ArrayCollection;
import mx.events.CloseEvent;
import mx.managers.PopUpManager;
import services.wscodeinspector.WSCodeInspector;
import mx.controls.Alert;

[Bindable]
public var selectedIndex:int =0;
public static var respostaIndice:int =0;
[Bindable]
public var questaoTaxonomiaId:int;
public var defeitos:ArrayCollection;
import services.wscodeinspector.WSCodeInspector;

protected function btnConfirmarMotivoErro_clickHandler(event:MouseEvent):void
{
	AppCodeInspector.respostaSelecionada = cbResposta.selectedIndex;
	
	selectedIndex = cbResposta.selectedIndex;
	
	var _resposta:Resposta = new Resposta();
	
	if (AppCodeInspector.nivelDificuldade!= 1)
	{
		_resposta.inicioErro= AppCodeInspector.selection.beginIndex;
		_resposta.fimErro = AppCodeInspector.selection.endIndex;
		AppCodeInspector.selection.htmlText = "<font color='#FF0000'><a href='event:"+AppCodeInspector.respostaIndexAtual+"'>" + AppCodeInspector.selection.text + "</a></font>";
	}
	_resposta.motivoErroId = selectedIndex;
	_resposta.perguntaNumero = AppCodeInspector.perguntaNum; 
	
	AppCodeInspector.respostas.addItem(_resposta);
	AppCodeInspector.respostaIndexAtual = AppCodeInspector.respostas.length;
	
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