import flash.events.MouseEvent;

import mx.collections.ArrayCollection;
import mx.controls.Alert;
import mx.controls.Text;
import mx.events.CloseEvent;
import mx.managers.PopUpManager;
import mx.states.AddItems;

import services.wscodeinspector.Wscodeinspector;

import valueObjects.ItemTaxonomiaEntity;
import valueObjects.TrechoDefeitoEntity;

public var nivelDificuldade:int;

public const FACIL : int = 1;
public const INTERMEDIARIO : int= 2;
public const DIFICIL : int= 3;

[Bindable]
public var selectedIndex:int =0;
public static var respostaIndice:int =0;
[Bindable]
public var questaoTaxonomiaId:int;
public var defeitos:ArrayCollection;




protected function btnConfirmarMotivoErro_clickHandler(event:MouseEvent):void
{
	
	var itemTaxonomiaSel:ItemTaxonomiaEntity = cbResposta.selectedItem as ItemTaxonomiaEntity;
	
	var trechoResposta:TrechoDefeitoEntity = new TrechoDefeitoEntity();
	trechoResposta.IT_ID = itemTaxonomiaSel.ID;
	
	if(nivelDificuldade!=FACIL)
	{
		trechoResposta.Conteudo = AppCodeInspector.selectedText.text;
	}
	
	AppCodeInspector.listRespostasSelecionadas.addItem(trechoResposta);
	
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