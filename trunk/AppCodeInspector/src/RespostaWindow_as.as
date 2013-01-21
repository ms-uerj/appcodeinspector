import Domain.ItemTaxonomia;
import Domain.TrechoDefeito;

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
import valueObjects.TrechoRespostaEntity;

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
public static var  mainApp:AppCodeInspector;
public var reclassificar:Boolean;

protected function btnConfirmarMotivoErro_clickHandler(event:MouseEvent):void
{
	var itemTaxonomiaSel:ItemTaxonomia = cbResposta.selectedItem as ItemTaxonomia;
	
	var trechoResp:TrechoRespostaEntity = new TrechoRespostaEntity();
	trechoResp.IT_ID = itemTaxonomiaSel.ID;
	trechoResp.classificao = itemTaxonomiaSel.Nome;
	
	if(nivelDificuldade==FACIL && !reclassificar)
		trechoResp.TRECHO_RESPOSTA = "-";
	
	if(nivelDificuldade!=FACIL && !reclassificar)
		trechoResp.TRECHO_RESPOSTA = trechoSelecionado;

	if(!reclassificar)
		AppCodeInspector.dtgTrechosInspetor.dataProvider.addItem(trechoResp);
	else
	{
		var index:int = AppCodeInspector.dtgTrechosInspetor.selectedIndex;
		var array:ArrayCollection = AppCodeInspector.dtgTrechosInspetor.dataProvider as ArrayCollection;
		var trechoDefTemp:TrechoRespostaEntity = array.getItemAt(index) as TrechoRespostaEntity;
		
		var trechoNovo : TrechoRespostaEntity = new TrechoRespostaEntity();
		trechoNovo.IT_ID = itemTaxonomiaSel.ID;
		trechoNovo.classificao = itemTaxonomiaSel.Nome;
		trechoNovo.TRECHO_RESPOSTA = trechoDefTemp.TRECHO_RESPOSTA;
		
		array.removeItemAt(index);
		array.addItemAt(trechoNovo,index);
		AppCodeInspector.dtgTrechosInspetor.dataProvider = array;
	}
	
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