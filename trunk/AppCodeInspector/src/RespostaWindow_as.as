import Domain.ItemTaxonomia;

import flash.events.MouseEvent;

import mx.accessibility.AlertAccImpl;
import mx.collections.ArrayCollection;
import mx.controls.Alert;
import mx.controls.Text;
import mx.events.CloseEvent;
import mx.managers.PopUpManager;
import mx.states.AddItems;

import services.webservicemain.WebServiceMain;

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
public var ItemTaxnomiaAtual:ArrayCollection;
public var listRespostasSelecionadas:ArrayCollection;
public var trechoSelecionado:String;

protected function btnConfirmarMotivoErro_clickHandler(event:MouseEvent):void
{
	var itemTaxonomiaSel:ItemTaxonomia = cbResposta.selectedItem as ItemTaxonomia;
	
	var trechoResposta:TrechoDefeitoEntity = new TrechoDefeitoEntity();
	trechoResposta.IT_ID = itemTaxonomiaSel.ID;
	
	if(nivelDificuldade!=FACIL)
		trechoResposta.Conteudo = trechoSelecionado;

	listRespostasSelecionadas.addItem(trechoResposta);

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