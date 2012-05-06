import Domain.Questao;
import Domain.Usuario;

import flash.events.MouseEvent;

import mx.collections.ArrayCollection;
import mx.controls.Alert;
import mx.rpc.events.ResultEvent;

protected function btn_RegistrarPartida_clickHandler(event:MouseEvent):void
{
	var error:String = validatePartida();
	if(error.length!=0)
	{
		Alert.show(error);
		return;
	}
	
	RelacionarUsrPartidaResult.token = ws_InspectorX.relacionarUsrPartida(lst_InspetoresAdicionados.dataProvider as ArrayCollection, PartidaAtualId);
	SetArtefatoPartidaResult.token = ws_InspectorX.setArtefatoPartida(lst_ArtefatosAdicionados.dataProvider as ArrayCollection, PartidaAtualId);
	Alert.show("Partida registrada com sucesso!");
	this.currentState = "FullInspec_Admin";
	
}

protected function btn_FullInspectAdminVoltar_clickHandler(event:MouseEvent):void
{
	QuestoesDisponiveis = new ArrayCollection();
	InspetoresDisponiveis = new ArrayCollection();
	
	lst_ArtefatosAdicionados.dataProvider.removeAll(); 
	lst_ArtefatosDisponiveis.dataProvider.removeAll(); 
	lst_InspetoresAdicionados.dataProvider.removeAll();
	lst_InspetoresDisponiveis.dataProvider.removeAll();
	
	this.currentState = "FullInspec_Admin";
}


protected function IniciarPartidaFullAdmin_resultHandler(e:ResultEvent):void
{
	PartidaAtualId = e.result as int;
	this.currentState="FullInspec_Admin_Partida";
	lbl_PartidaIdentificacao.text="Partida "+PartidaAtualId;
	setAllDisponiveisLists();
}

protected function setAllDisponiveisLists():void
{
	GetQuestoesByNivelResult.token = ws_InspectorX.GetQuestoesByNivel(NivelDificuldade);
	GetTodosUsersResult.token = ws_InspectorX.getTodosUsers();
}

protected function GetQuestoesByNivelResult_resultHandler(e:ResultEvent):void
{
	QuestoesDisponiveis = Questao.toQuestaoCollection(ArrayCollection(e.result));
	lst_ArtefatosDisponiveis.dataProvider=QuestoesDisponiveis;
}

protected function GetTodosUsersResult_resultHandler(e:ResultEvent):void
{
	InspetoresDisponiveis = Usuario.toUsuarioCollection(ArrayCollection(e.result));
	lst_InspetoresDisponiveis.dataProvider=InspetoresDisponiveis;
}


protected function GetArtefatosPartidaEditResult_resultHandler(e:ResultEvent):void
{
	var questoesList:ArrayCollection = Questao.toQuestaoCollection( ArrayCollection(e.result));
	lst_ArtefatosAdicionados.dataProvider=questoesList;
}

protected function GetUsuariosByPartidaEditResult_resultHandler(e:ResultEvent):void
{
	var inspetoresList:ArrayCollection = Usuario.toUsuarioCollection(ArrayCollection(e.result));
	lst_InspetoresAdicionados.dataProvider=inspetoresList;
}

private function validatePartida():String
{
	var errors:String = ""; 	
	if(lst_ArtefatosAdicionados.dataProvider.length<10)
		errors + "São necessários 10 artefatos para cada partida!\n\n";
	if(lst_InspetoresAdicionados.dataProvider.length==0)
		errors + "É necessário no mínimo 1 inspetor por partida!";
	return errors;
}