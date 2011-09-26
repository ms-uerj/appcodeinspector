import CodeInspector.TXT;

import flash.events.Event;

import mx.collections.ArrayCollection;
import mx.utils.ObjectUtil;

import valueObjects.QuestaoEntity;

protected var txtTutorials:TXT;

public static const FACIL : int = 0;
public static const INTERMEDIARIO : int= 1;
public static const DIFICIL : int= 2;



//Adiciciona a um token que dispara o evento (GetQuestoesResultFacil_resultHandler).
protected function _btnFacil_clickHandler(event:MouseEvent):void
{
	nivelDificuldade = FACIL;
	//var questoes:QuestaoEntity[] = new QuestaoEntity()[];
	GetQuestoesResult.token = wSCodeInspector.GetQuestoesByType(FACIL,tipoArtefato_Id);
}

protected function GetQuestoesResultFacil_resultHandler(e:ResultEvent):void
{
	
	xmlPerguntasWS = ArrayCollection(e.result);
	//Pegando todas as respostas das questões no nível fácil
	//xmlRespostasWS = ArrayCollection(wSCodeInspector.GetQuestoesRespostas(FACIL));
	
	txtTutorials = new TXT();
	txtTutorials.Load("Arquivos/Tutorial/Facil.txt");
	txtTutorials.addEventListener("TXT_Loaded",txtTutorial_TXTLoaded);
	
}

protected function _btnIntermediario_clickHandler(event:MouseEvent):void
{
	nivelDificuldade = INTERMEDIARIO;
	GetQuestoesResult2.token = wSCodeInspector.GetQuestoesByType(INTERMEDIARIO,tipoArtefato_Id);
}

protected function GetQuestoesResultIntermediario_resultHandler(e:ResultEvent):void
{
	xmlPerguntasWS = ArrayCollection(e.result);
	txtTutorials = new TXT();
	txtTutorials.Load("Arquivos/Tutorial/Inter.txt");
	txtTutorials.addEventListener("TXT_Loaded",txtTutorial_TXTLoaded);
}


protected function _btnDificil_clickHandler(event:MouseEvent):void
{
	nivelDificuldade = DIFICIL;
	GetQuestoesResult3.token =  wSCodeInspector.GetQuestoesByType(DIFICIL,tipoArtefato_Id);
}

protected function GetQuestoesResultDificil_resultHandler(e:ResultEvent):void
{
	xmlPerguntasWS = ArrayCollection(e.result);
	txtTutorials = new TXT();
	txtTutorials.Load("Arquivos/Tutorial/Dificil.txt");
	txtTutorials.addEventListener("TXT_Loaded",txtTutorial_TXTLoaded);
}

protected function txtTutorial_TXTLoaded(event:Event):void
{
	this.currentState = "Tutorial";
	txtTutorial.text = txtTutorials.Texto;
	
}