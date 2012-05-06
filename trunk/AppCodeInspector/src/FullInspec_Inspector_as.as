import flash.events.MouseEvent;

import mx.collections.ArrayCollection;
import mx.rpc.events.ResultEvent;

import valueObjects.PartidaEntity;
import valueObjects.QuestaoEntity;


protected function lst_MinhasPartidas_Inspector_clickHandler(event:MouseEvent):void
{
	if (lst_MinhasPartidas_Inspector.selectedItem!=null) 
	{
		var partida:PartidaEntity = lst_MinhasPartidas_Inspector.selectedItem as PartidaEntity;
		getArtefatosPendentesResult.token = ws_InspectorX.getArtefatosPendentes(UsuarioLogado.U_ID,partida.P_ID);
	}
}

protected function lst_Artefatos_Inspector_clickHandler(event:MouseEvent):void
{
	if (lst_Artefatos_Inspector.selectedItem!=null) 
	{
		var questao:QuestaoEntity = lst_Artefatos_Inspector.selectedItem as QuestaoEntity;
		txa_Artefato_Inspector.text=questao.Q_XML;
	}
}

protected function getPartidasResult_resultHandler(e:ResultEvent):void
{
	var partidasInspector:ArrayCollection = ArrayCollection(e.result);
	lst_MinhasPartidas_Inspector.dataProvider=partidasInspector;
}

protected function getArtefatosPendentesResult_resultHandler(e:ResultEvent):void
{
	var partidasInspector:ArrayCollection = ArrayCollection(e.result);
	lst_MinhasPartidas_Inspector.dataProvider=partidasInspector;
}