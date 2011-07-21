import CodeInspector.TXT;

import flash.events.Event;

import mx.collections.ArrayCollection;
import mx.utils.ObjectUtil;

protected var txtTutorialFacil:TXT;

public static const FACIL : int = 1;
public static const INTERMEDIARIO : int= 2;
public static const DIFICIL : int= 3;

public static var nivielDificuldade:int;

//Adiciciona a um token que dispara o evento (GetQuestoesResultFacil_resultHandler).
protected function _btnFacil_clickHandler(event:MouseEvent):void
{
	nivielDificuldade = 1;
	GetQuestoesResult.token = wSCodeInspector.GetQuestoes(FACIL);
}

protected function GetQuestoesResultFacil_resultHandler(e:ResultEvent):void
{
	
	xmlPerguntasWS = ArrayCollection(e.result);
	//Pegando todas as respostas das questões no nível fácil
	xmlRespostasWS = ArrayCollection(wSCodeInspector.GetQuestoesRespostas(FACIL));
	
	txtTutorialFacil = new TXT();
	txtTutorialFacil.Load("Arquivos/Tutorial/Facil.txt");
	txtTutorialFacil.addEventListener("TXT_Loaded",txtTutorial_TXTLoaded);
	
}

protected function _btnIntermediario_clickHandler(event:MouseEvent):void
{
	nivielDificuldade = 2;
	GetQuestoesResult2.token = wSCodeInspector.GetQuestoes(INTERMEDIARIO);
}

protected function GetQuestoesResultIntermediario_resultHandler(e:ResultEvent):void
{
	xmlPerguntasWS = ArrayCollection(e.result);
	txtTutorialFacil = new TXT();
	txtTutorialFacil.Load("Arquivos/Tutorial/Inter.txt");
	txtTutorialFacil.addEventListener("TXT_Loaded",txtTutorial_TXTLoaded);
}


protected function _btnDificil_clickHandler(event:MouseEvent):void
{
	nivielDificuldade = 3;
	GetQuestoesResult3.token = wSCodeInspector.GetQuestoes(DIFICIL);
}

protected function GetQuestoesResultDificil_resultHandler(e:ResultEvent):void
{
	xmlPerguntasWS = ArrayCollection(e.result);
	txtTutorialFacil = new TXT();
	txtTutorialFacil.Load("Arquivos/Tutorial/Dificil.txt");
	txtTutorialFacil.addEventListener("TXT_Loaded",txtTutorial_TXTLoaded);
	
}


protected function txtTutorial_TXTLoaded(event:Event):void
{
	this.currentState = "Tutorial";
	txtTutorial.text = txtTutorialFacil.Texto; 
}