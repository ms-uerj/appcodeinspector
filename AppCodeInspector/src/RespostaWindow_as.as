import mx.collections.ArrayCollection;
import mx.controls.Alert;
import mx.events.CloseEvent;
import mx.managers.PopUpManager;

import services.wscodeinspector.WSCodeInspector;

[Bindable]
public var selectedIndex:int =0;
public static var respostaIndice:int =0;
[Bindable]
public var questaoTaxonomiaId:int;
public var defeitos:ArrayCollection;

import services.wscodeinspector.WSCodeInspector;
import valueObjects.ItemTaxonomiaEntity;
import mx.states.AddItems;
import valueObjects.TrechoDefeitoEntity;
import mx.controls.Text;

protected function btnConfirmarMotivoErro_clickHandler(event:MouseEvent):void
{
	var itemTaxonomiaSel:ItemTaxonomiaEntity = cbResposta.selectedItem as ItemTaxonomiaEntity;
	
	var trechoResposta:TrechoDefeitoEntity = new TrechoDefeitoEntity();

	trechoResposta._internal_IT_ID = itemTaxonomiaSel._internal_ID;
	
	trechoResposta._internal_Conteudo = AppCodeInspector.selection.text;
	
	AppCodeInspector.listRespostasSelecionadas.addItem(trechoResposta);
	
	if (AppCodeInspector.nivelDificuldade!= 0)
	{
		//_resposta.inicioErro= AppCodeInspector.selection.beginIndex;
		//_resposta.fimErro = AppCodeInspector.selection.endIndex;
		//AppCodeInspector.selection.htmlText = "<font color='#FF0000'><a href='event:"+AppCodeInspector.respostaIndexAtual+"'>" + AppCodeInspector.selection.text + "</a></font>";
	}
	
	//_resposta.motivoErroId = selectedIndex;
	//_resposta.perguntaNumero = AppCodeInspector.perguntaNum; 
	
	//AppCodeInspector.respostas.addItem(_resposta);
	//AppCodeInspector.respostaIndexAtual = AppCodeInspector.respostas.length;
	
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