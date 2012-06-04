import Domain.TipoArtefato;

import flash.events.MouseEvent;

import mx.collections.ArrayCollection;
import mx.controls.Alert;
import mx.rpc.events.ResultEvent;

import valueObjects.TipoArtefatoEntity;

public var tiposArtefato:ArrayCollection;

protected function btn_ConfirmarSelArtefato_clickHandler(event:MouseEvent):void
{
	try
	{
		if(ddl_TipoArtefatoSelecao.selectedItem!=null)
		{
			var t:TipoArtefatoEntity;
			t = ddl_TipoArtefatoSelecao.selectedItem as TipoArtefato;
			TipoArtefato_Id=t.TA_ID;
			this.currentState = "Dificuldade";
			
			ddl_TipoArtefatoSelecao.selectedIndex=-1;
		}
		else
		{
			Alert.show("Selecione um tipo de artefato antes de prosseguir.");
		}
	}
	catch(e:Error)
	{
		Alert.show(e.message);
	}
}

protected function btn_VoltarArtSel_clickHandler(event:MouseEvent):void
{
	this.currentState = "JogoModoSelecao";
	
}

protected function GetTiposArtefato_resultHandler(e:ResultEvent):void
{
	
	tiposArtefato = TipoArtefato.toTipoArtefatoCollection(ArrayCollection(e.result));
	ddl_TipoArtefatoSelecao.dataProvider=tiposArtefato;
}

