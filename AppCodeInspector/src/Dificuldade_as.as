import CodeInspector.TXT;

import flash.events.Event;

import mx.collections.ArrayCollection;
import mx.utils.ObjectUtil;

protected var txtTutorial:TXT;

public static const FACIL : int = 0;
public static const INTERMEDIARIO : int= 1;
public static const DIFICIL : int= 2;

public static var nivielDificuldade:int;

//Adiciciona a um token que dispara o evento (GetQuestoesResultFacil_resultHandler).
protected function _btnFacil_clickHandler(event:MouseEvent):void
{
	nivielDificuldade = 0;
	GetQuestoesResult.token = wSCodeInspector.GetQuestoes(FACIL);
}

protected function GetQuestoesResultFacil_resultHandler(e:ResultEvent):void
{
	
	xmlPerguntasWS = ArrayCollection(e.result);
	//Pegando todas as respostas das questões no nível fácil
	xmlRespostasWS = ArrayCollection(wSCodeInspector.GetQuestoesRespostas(FACIL));
	
	txtTutorial = new TXT();
	txtTutorial.Load("Arquivos/Tutorial/Facil.txt");
	txtTutorial.addEventListener("TXT_Loaded",txtTutorial_TXTLoaded);
	
}

protected function _btnIntermediario_clickHandler(event:MouseEvent):void
{
	nivielDificuldade = 1;
	GetQuestoesResult2.token = wSCodeInspector.GetQuestoes(INTERMEDIARIO);
}

protected function GetQuestoesResultIntermediario_resultHandler(e:ResultEvent):void
{
	xmlPerguntasWS = ArrayCollection(e.result);
	txtTutorial = new TXT();
	txtTutorial.Load("Arquivos/Tutorial/Inter.txt");
	txtTutorial.addEventListener("TXT_Loaded",txtTutorial_TXTLoaded);
}


protected function _btnDificil_clickHandler(event:MouseEvent):void
{
	nivielDificuldade = 2;
	GetQuestoesResult3.token = wSCodeInspector.GetQuestoes(DIFICIL);
}

protected function GetQuestoesResultDificil_resultHandler(e:ResultEvent):void
{
	xmlPerguntasWS = ArrayCollection(e.result);
	txtTutorial = new TXT();
	txtTutorial.Load("Arquivos/Tutorial/Dificil.txt");
	txtTutorial.addEventListener("TXT_Loaded",txtTutorial_TXTLoaded);
}

protected function txtTutorial_TXTLoaded(event:Event):void
{
	this.currentState = "Tutorial";
	txtTutorial.text = txtTutorial.Texto; 
}