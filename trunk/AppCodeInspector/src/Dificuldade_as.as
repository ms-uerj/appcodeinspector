import CodeInspector.TXT;

import Domain.Questao;

import flash.events.Event;
import flash.events.MouseEvent;

import mx.collections.ArrayCollection;
import mx.controls.Alert;
import mx.rpc.events.ResultEvent;
import mx.utils.ObjectUtil;

import valueObjects.QuestaoEntity;

protected var txtTutorials:TXT;

public const FACIL : int = 1;
public const INTERMEDIARIO : int= 2;
public const DIFICIL : int= 3;

private const Tutorial_Facil_Path:String="Arquivos/Tutorial/Facil.txt";
private const Tutorial_Intermediario_Path:String="Arquivos/Tutorial/Inter.txt";
private const Tutorial_Dificil_Path:String="Arquivos/Tutorial/Dificil.txt";

protected function btn_VoltarDificuldade_clickHandler(event:MouseEvent):void
{
	this.currentState="ArtefatosSelecao";
}

protected function _btnFacil_clickHandler(event:MouseEvent):void
{
	NivelDificuldade = FACIL;
	GetQuestoesResult.token = ws_InspectorX.GetQuestoesByType(UsuarioTipoID,FACIL,TipoArtefato_Id);
}

protected function GetQuestoesResultFacil_resultHandler(e:ResultEvent):void
{
	GetQuestoes(e, Tutorial_Facil_Path);
}

protected function _btnIntermediario_clickHandler(event:MouseEvent):void
{
	NivelDificuldade = INTERMEDIARIO;
	GetQuestoesResult2.token = ws_InspectorX.GetQuestoesByType(UsuarioTipoID,INTERMEDIARIO,TipoArtefato_Id);
}

protected function GetQuestoesResultIntermediario_resultHandler(e:ResultEvent):void
{
	GetQuestoes(e, Tutorial_Intermediario_Path);
}


protected function _btnDificil_clickHandler(event:MouseEvent):void
{
	NivelDificuldade = DIFICIL;
	GetQuestoesResult3.token =  ws_InspectorX.GetQuestoesByType(UsuarioTipoID,DIFICIL,TipoArtefato_Id);
}

protected function GetQuestoesResultDificil_resultHandler(e:ResultEvent):void
{
	GetQuestoes(e, Tutorial_Dificil_Path);
}

protected function GetQuestoes(e:ResultEvent, path: String):void
{
	ArtefatosList = Questao.toQuestaoCollection(ArrayCollection(e.result));
	
	if(ArtefatosList.length==0)
	{
		Alert.show("Não existem perguntas cadastradas para o nível de dificuldade selecionado.");
		return;
	}
	
	txtTutorials = new TXT();
	txtTutorials.Load(path);
	txtTutorials.addEventListener("TXT_Loaded",txtTutorial_TXTLoaded);	
}

protected function txtTutorial_TXTLoaded(event:Event):void
{
	this.currentState = "Tutorial";
	txtTutorial.text = txtTutorials.Texto;
	
}
