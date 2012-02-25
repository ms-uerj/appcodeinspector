import valueObjects.TipoArtefatoEntity;
import mx.rpc.events.ResultEvent;
import flash.events.MouseEvent;
import mx.controls.Alert;
import mx.collections.ArrayCollection;


protected function btn_ConfirmarSelArtefato_clickHandler(event:MouseEvent):void
{
	try
	{
		if(cbx_TipoQuestao.selectedItem!=null)
		{
			var t:TipoArtefatoEntity;
			t = cbx_TipoQuestao.selectedItem as TipoArtefatoEntity;
			tipoArtefato_Id=t.TA_ID;
			this.currentState = "Dificuldade";
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

protected function GetTiposArtefato_resultHandler(e:ResultEvent):void
{
	tiposArtefato = ArrayCollection(e.result);
	cbx_TipoQuestao.dataProvider=tiposArtefato;
}

protected function btn_VoltarCadastro_clickHandler(event:MouseEvent):void
{
	this.currentState = "Login";
}