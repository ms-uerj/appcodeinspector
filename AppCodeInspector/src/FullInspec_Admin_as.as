import CodeInspector.TXT;

import Domain.Partida;
import Domain.Questao;
import Domain.Usuario;

import Util.InspectorXUserEnum;

import flash.events.Event;
import flash.events.MouseEvent;

import mx.collections.ArrayCollection;
import mx.controls.Alert;
import mx.managers.PopUpManager;
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
		IniciarPartidaFullAdmin.token = ws_InspectorX.IniciarPartida(rdg_PartidaDificuldade.selectedValue as int,UsuarioTipoID,InspectorXUserEnum.Moderador);
	}
	else 
		Alert.show("Por favor, selecione um nível de dificuldade.");

}

protected function btn_EditarPartidaAdmin_clickHandler(event:MouseEvent):void
{
	if (lst_MinhasPartidas.selectedItem!=null) 
	{
		var partida:PartidaEntity  = lst_MinhasPartidas.selectedItem as PartidaEntity;
		this.currentState="FullInspec_Admin_Partida";
		GetArtefatosPartidaEditResult.token = ws_InspectorX.getArtefatos(partida.P_ID);
		GetUsuariosByPartidaEditResult.token = ws_InspectorX.getUsuariosByPartida(partida.P_ID);
		
		lst_ArtefatosAdicionados.dragEnabled=false;
		lst_InspetoresAdicionados.dragEnabled=false;
		
		setAllDisponiveisLists();
	}
}

protected function btn_DeletarPartidaAdmin_clickHandler(event:MouseEvent):void
{
	if (lst_MinhasPartidas.selectedItem!=null) 
	{
		var partida:Partida = lst_MinhasPartidas.selectedItem as Partida;
		if(partida==null)
		{
			Alert.show("Por favor, selecione uma partida para ser deletada.");
			return;
		}
		removerFullInspectPartidaResult.token = ws_InspectorX.removerFullInspectPartida(partida.P_ID);
		lst_Inspetores.dataProvider = new ArrayCollection();
		lst_Artefato.dataProvider = new ArrayCollection();
		lst_MinhasPartidas.dataProvider = new ArrayCollection();
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

protected function btn_ArtefatoView_clickHandler(event:MouseEvent):void
{
	if (lst_Artefato.selectedItem!=null) 
	{
		var ArtefatoVisaoPopUp:ArtefatoVisao = new ArtefatoVisao();

		var questao:Questao = lst_Artefato.selectedItem as Questao;
		
		ArtefatoVisaoPopUp.pnl_Artefato.title = questao.toString();
		
		ArtefatoVisaoPopUp.questaoConteudo = questao.Q_XML;
		
		PopUpManager.addPopUp(ArtefatoVisaoPopUp,this,true);
		PopUpManager.centerPopUp(ArtefatoVisaoPopUp);
	}
}

protected function btn_VoltarSelecaoPapel_clickHandler(event:MouseEvent):void
{
	this.currentState="JogoPapelSelecao";
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

protected function removerFullInspectPartidaResult_resultHandler(e:ResultEvent):void
{
	GetPartidasResult.token = ws_InspectorX.getPartidas(UsuarioTipoID);
}
