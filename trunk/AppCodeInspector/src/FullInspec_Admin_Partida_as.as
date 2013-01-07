import Domain.Questao;
import Domain.Usuario;

import flash.events.MouseEvent;

import mx.collections.ArrayCollection;
import mx.controls.Alert;
import mx.events.DragEvent;
import mx.rpc.events.ResultEvent;
import mx.managers.PopUpManager;

public var partidaArtefatoMax:int =20;
public var partidaInspetorMax:int =20;

protected function btn_RegistrarPartida_clickHandler(event:MouseEvent):void
{
	var error:String = validatePartida();
	if(error.length!=0)
	{
		Alert.show(error);
		return;
	}
	RelacionarUsrPartidaResult.token = ws_InspectorX.relacionarUsrPartida(Usuario.toIdCollection(lst_InspetoresAdicionados.dataProvider as ArrayCollection), PartidaAtualId);
	SetArtefatoPartidaResult.token = ws_InspectorX.setArtefatoPartida(Questao.toIdCollection(lst_ArtefatosAdicionados.dataProvider as ArrayCollection), PartidaAtualId);
	Alert.show("Partida registrada com sucesso!");
	this.currentState = "FullInspec_Admin";
	clearList();
}

protected function btn_FullInspectAdminVoltar_clickHandler(event:MouseEvent):void
{
	clearList();
	this.currentState = "FullInspec_Admin";
}


protected function IniciarPartidaFullAdmin_resultHandler(e:ResultEvent):void
{
	PartidaAtualId = e.result as int;
	this.currentState="FullInspec_Admin_Partida";
	lbl_PartidaIdentificacao.text="Partida "+PartidaAtualId;
	lst_ArtefatosAdicionados.dragEnabled=true;
	lst_InspetoresAdicionados.dragEnabled=true;
	setAllDisponiveisLists();
}

protected function btn_ArtefatoViewAdmPartida_clickHandler(event:MouseEvent):void
{
	if (lst_ArtefatosDisponiveis.selectedItem!=null) 
	{
		var ArtefatoVisaoPopUp:ArtefatoVisao = new ArtefatoVisao();
		
		var questao:Questao = lst_ArtefatosDisponiveis.selectedItem as Questao;
		
		ArtefatoVisaoPopUp.pnl_Artefato.title = questao.toString();
		
		ArtefatoVisaoPopUp.questaoConteudo = questao.Q_XML;
		
		PopUpManager.addPopUp(ArtefatoVisaoPopUp,this,true);
		PopUpManager.centerPopUp(ArtefatoVisaoPopUp);
	}
}

protected function setAllDisponiveisLists():void
{
	GetQuestoesByNivelResult.token = ws_InspectorX.GetQuestoesByNivel(NivelDificuldade);
	GetTodosUsersResult.token = ws_InspectorX.getTodosUsers(UsuarioTipoID);
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
	var errors:Array = new Array();
	
	if(lst_ArtefatosAdicionados.dataProvider==null||lst_ArtefatosAdicionados.dataProvider.length==0)
		errors.join("É necessário no mínimo 1 artefato para registrar a partida.\n\n");
	if(lst_InspetoresAdicionados.dataProvider==null||lst_InspetoresAdicionados.dataProvider.length==0)
		errors.join("É necessário no mínimo 1 inspetor por partida!\n\n");
	if(lst_ArtefatosAdicionados.dataProvider.length>partidaArtefatoMax)
		errors.join("O numero máximo de artefatos para cada partida é" + partidaArtefatoMax + ".");
	
	return errors.toString();
}

private function clearList():void
{
	QuestoesDisponiveis = new ArrayCollection();
	InspetoresDisponiveis = new ArrayCollection();
	
	lst_ArtefatosAdicionados.dataProvider = new ArrayCollection(); 
	lst_ArtefatosDisponiveis.dataProvider = new ArrayCollection(); 
	lst_InspetoresAdicionados.dataProvider = new ArrayCollection();
	lst_InspetoresDisponiveis.dataProvider = new ArrayCollection();
	GetPartidasResult.token = ws_InspectorX.getPartidas(UsuarioTipoID);
}

protected function lst_ArtefatosDisponiveis_dragEnterHandler(event:DragEvent):void
{
	try
	{
		for each (var draggedItem:Object in event.dragSource.dataForFormat("itemsByIndex"))
		{
			var q:Questao = Questao(draggedItem);
		}
		
	}
	catch(e:Error)
	{
		Alert.show("Este item não é do tipo aceito para esta lista.");
	}
}

protected function lst_ArtefatosAdicionados_dragEnterHandler(event:DragEvent):void
{
	try
	{
		var counter:int=0;
		for each (var draggedItem:Object in event.dragSource.dataForFormat("itemsByIndex"))
		{
			var q:Questao = Questao(draggedItem);
			
			if(lst_ArtefatosAdicionados.dataProvider==null)
				return;
			
			var listLenght:int = lst_ArtefatosAdicionados.dataProvider.length;
			counter++;
			
			if(listLenght+counter>=partidaArtefatoMax)
				Alert.show("O número máximo de artefatos por partida é "+partidaArtefatoMax);
			
		}
	}
	catch(e:Error)
	{
		Alert.show("Este item  não é do tipo aceito para esta lista.");
	}				
}

protected function lst_InspetoresAdicionados_dragEnterHandler(event:DragEvent):void
{
	try
	{
		var counter:int=0;
		for each (var draggedItem:Object in event.dragSource.dataForFormat("itemsByIndex"))
		{
			var q:Usuario = Usuario(draggedItem);
			
			if(lst_InspetoresAdicionados.dataProvider==null)
				return;
			
			var listLenght:int = lst_InspetoresAdicionados.dataProvider.length;
			counter++;
			if(listLenght+counter>=partidaInspetorMax)
				Alert.show("O número máximo de artefatos por partida é "+partidaInspetorMax);
		}
		
	}
	catch(e:Error)
	{
		Alert.show("Este item  não é do tipo aceito para esta lista.");
	}	
}

protected function lst_InspetoresDisponiveis_dragEnterHandler(event:DragEvent):void
{
	try
	{
		
		for each (var draggedItem:Object in event.dragSource.dataForFormat("itemsByIndex"))
		{
			var q:Usuario = Usuario(draggedItem);
		}
		
	}
	catch(e:Error)
	{
		Alert.show("Este item  não é do tipo aceito para esta lista.");
	}
}