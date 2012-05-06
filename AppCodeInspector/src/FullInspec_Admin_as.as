import CodeInspector.TXT;

import Domain.Partida;
import Domain.Questao;
import Domain.Usuario;

import Util.InspectorXUserEnum;

import flash.events.Event;
import flash.events.MouseEvent;

import mx.collections.ArrayCollection;
import mx.controls.Alert;
import mx.rpc.events.ResultEvent;
import mx.utils.ObjectUtil;

import valueObjects.PartidaEntity;
import valueObjects.QuestaoEntity;

public var QuestoesDisponiveis:ArrayCollection;
public var InspetoresDisponiveis:ArrayCollection;

public var QuestoesList:ArrayCollection

public var MinhasPartidas:ArrayCollection;

protected function btn_CriarPartida_clickHandler(event:MouseEvent):void
{
	if (rdg_PartidaDificuldade.selectedValue!=null) 
	{
		NivelDificuldade = rdg_PartidaDificuldade.selectedValue as int;
		IniciarPartidaFullAdmin.token = ws_InspectorX.IniciarPartida(rdg_PartidaDificuldade.selectedValue as int,UsuarioLogado.U_ID,InspectorXUserEnum.FullInspection.type );
	}
	else 
	{
		Alert.show("Por favor selecione um nível de dificuldade.");
	}
}

protected function btn_EditarPartidaAdmin_clickHandler(event:MouseEvent):void
{
	if (lst_MinhasPartidas.selectedItem!=null) 
	{
		var partida:PartidaEntity  = lst_MinhasPartidas.selectedItem as PartidaEntity;
		this.currentState="FullInspec_Admin_Partida";
		GetArtefatosPartidaEditResult.token = ws_InspectorX.getArtefatos(partida.P_ID);
		GetUsuariosByPartidaEditResult.token = ws_InspectorX.getUsuariosByPartida(partida.P_ID);
		
		setAllDisponiveisLists();
	}
}

protected function btn_AvaliarPartida_clickHandler(event:MouseEvent):void
{
	if (lst_MinhasPartidas.selectedItem!=null) 
	{
		var partida:PartidaEntity  = lst_MinhasPartidas.selectedItem as PartidaEntity;
		
	}
}

protected function lst_MinhasPartidas_clickHandler(event:MouseEvent):void
{
	if (lst_MinhasPartidas.selectedItem!=null) 
	{
		var partida:PartidaEntity  = lst_MinhasPartidas.selectedItem as PartidaEntity;
		
		GetArtefatosResult.token = ws_InspectorX.getArtefatos(partida.P_ID);
		GetUsuariosByPartidaResult.token = ws_InspectorX.getUsuariosByPartida(partida.P_ID);
	}
}

protected function GetPartidasResult_resultHandler(e:ResultEvent):void
{
	MinhasPartidas = Partida.toPartidaCollection(ArrayCollection(e.result));
	lst_MinhasPartidas.dataProvider=MinhasPartidas;
}

protected function GetArtefatosResult_resultHandler(e:ResultEvent):void
{
	var questoesList:ArrayCollection = Questao.toQuestaoCollection(ArrayCollection(e.result));
	lst_Artefato.dataProvider=questoesList;
}

protected function GetUsuariosByPartidaResult_resultHandler(e:ResultEvent):void
{
	var inspetoresList:ArrayCollection = Usuario.toUsuarioCollection(ArrayCollection(e.result));
	lst_Inspetores.dataProvider=inspetoresList;
}


