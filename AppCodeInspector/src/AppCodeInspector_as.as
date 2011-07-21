import CodeInspector.CSS;
import CodeInspector.XMLLoader;

import flash.display.Stage;
import flash.events.MouseEvent;
import flash.events.TextEvent;
import flash.profiler.showRedrawRegions;
import flash.xml.XMLNode;

import mx.collections.ArrayCollection;
import mx.controls.Alert;
import mx.controls.Label;
import mx.controls.TextArea;
import mx.controls.textClasses.TextRange;
import mx.core.Application;
import mx.core.UIComponent;
import mx.managers.PopUpManager;
import mx.rpc.events.ResultEvent;
import mx.rpc.xml.SimpleXMLEncoder;
import mx.states.AddChild;

import services.wscodeinspector.WSCodeInspector;

private var xml:XMLLoader;
private var css:CSS;
private var field:TextArea;

private var cssBool:Boolean = false;
private var xmlBool:Boolean = false;
public  static var perguntaNum:int = 0;


[Bindable]
public var listRespostasSelecionadas:ArrayCollection = new ArrayCollection();

[Bindable]
public static var respostaSelecionada:int = 0;

protected var container:UIComponent;
private var repostaWindow:RespostaWindow = new RespostaWindow();


public var xmlPerguntasWS:ArrayCollection;
public var xmlRespostasWS:ArrayCollection;

public static var respostas:ArrayCollection = new ArrayCollection();

public static var respostaIndexAtual:int = 0;

public static var selection:TextRange;

public function onLoad():void
{
	field = new TextArea();
	
	container = new UIComponent();
	
	addElement(container);
	container.addChild(field);

	with (field) 
	{
		x = (stage.width/2) - 400;
		y = (stage.height/2) - 250;
		width = 800;
		height = 500;
		multiline = true;
		
		wordWrap = true;
		condenseWhite = true;
		if(nivielDificuldade == 1)
			selectable = false;
		else
			selectable = true;
			
	}
	
	field.addEventListener(MouseEvent.MOUSE_UP,onMouseUp);
	
	xml = new XMLLoader();
	xml.LoadWS(xmlPerguntasWS);
	//xml.Load("Arquivos/perguntas.xml");
	xml.addEventListener("XML_Loaded", xmlDone);
	xml.addEventListener("XML_IOError", error);
	xml.addEventListener("XML_SecurityError", error);
	xml.addEventListener("XML_ParseError", error);
	
	css = new CSS();
	css.Load("Arquivos/styles.css");
	css.addEventListener("CSS_Loaded", cssDone);
	css.addEventListener("CSS_IOError", error);
	css.addEventListener("CSS_SecurityError", error);
	css.addEventListener("CSS_ParseError", error);
}


private function onMouseUp(evt:MouseEvent):void
{
	selection = new TextRange(field,false,field.selectionBeginIndex,field.selectionEndIndex);
	var selLength:int = selection.endIndex - selection.beginIndex;
	
	if((selLength)) 
	{
		PopUpManager.addPopUp(repostaWindow,this,true);
		PopUpManager.centerPopUp(repostaWindow);
	}
}



private function cssDone(e:Event):void {
	cssBool = true;
	xmlBool = true;
	allDone();
}

public function xmlDone():void {
	xmlBool = true;
	allDone();
}

private function allDone():void	
{
	if(cssBool && xmlBool)
	{
		field.styleSheet = css.sheet;
		field.htmlText = xml.perguntas[perguntaNum];
		field.addEventListener(TextEvent.LINK, textEvent);
	}
}

private function textEvent(e:TextEvent):void {
	
		PopUpManager.addPopUp(repostaWindow,this,true);
		if(respostas.length  != 0)
			repostaWindow.cbResposta.selectedIndex = (Resposta)(respostas.getItemAt(parseInt(e.text)-1)).motivoErroId;
		PopUpManager.centerPopUp(repostaWindow);
}

protected function btnProximaPergunta_clickHandler(event:MouseEvent):void
{
	
	if(respostaSelecionada == 0)
		Alert.show("Selecione o motivo do erro antes de prosseguir");
	else if(xmlRespostasWS[perguntaNum]!=respostaSelecionada)
	{
		
		 xml.perguntas[perguntaNum]
		
		Alert.show("")
	}
	else
	{
		listRespostasSelecionadas.addItem("Pergunta Nº "+(perguntaNum+1) + " " + getRespostas(respostaSelecionada));
		
		if(xml.perguntas.length <= perguntaNum +1)
		{	
			removeElement(container);
			
			var respostasXML:String = respostaToXml(respostas);
			
			var ws:services.wscodeinspector.WSCodeInspector = new WSCodeInspector();
			ws.addEventListener(ResultEvent.RESULT,EncerrarPartidaResult_resultHandler);
			ws.EncerrarPartida(nivielDificuldade,respostasXML,LoginUsuario);
		}
		else
		{
			respostaSelecionada = 0;
			++perguntaNum;
			field.styleSheet = css.sheet;
			field.htmlText = xml.perguntas[perguntaNum];
		}
	}
}
protected function EncerrarPartidaResult_resultHandler(e:ResultEvent):void
{
	this.currentState = "ResultadoFinal";
}
protected function respostaToXml(respostas:ArrayCollection):String
{
	var string:String = "<r>";
	for each(var item:Resposta in respostas)
	{
		string+="<resposta fimErro=\""+ item.fimErro +
			"\" inicioErro=\""+ item.inicioErro +
			"\" motivoErroId=\""+ item.motivoErroId +
			"\" perguntaNumero=\""+ item.perguntaNumero +"\"" +
			"/>";
	}
	string +="</r>" 
	/*var qName:QName = new QName("root");
	var xmlDocument:XMLDocument = new XMLDocument();
	var simpleXMLEncoder:SimpleXMLEncoder= new SimpleXMLEncoder(xmlDocument);
	var xmlNode:XMLNode= simpleXMLEncoder.encodeValue(respostas, qName, xmlDocument);
	var xml:XML = new XML(xmlDocument.toString());*/
	
	return string;
}
protected function getRespostas(respostaId:int):String
{
	switch(respostaId)
	{
		case 1:
			return "Defeitos de Omissão";
			break;
		case 2:
			return "Defeitos de Fato Incorreto";
			break;
		case 3:
			return "Defeitos de Inconsitência";
			break;
		case 4:
			return "Defeitos de Ambiguidade";
			break;
		case 5:
			return "Defeitos de Informação Estranha";
			break;
		default:
			return "";
			break;
	}
}

private function error(e:Event):void {
	switch(e.type) {
		case "XML_IOError":
			field.htmlText = '<p align="center"><b><font color="#FF0000" size="12" face="Verdana, Arial, Helvetica, sans-serif"><br> XML IO ERROR<br>Por favor corrija o caminho do arquivo XML!</font></b></p>'				
			break;
		case "XML_SecurityError":
			field.htmlText = '<p align="center"><b><font color="#FF0000" size="12" face="Verdana, Arial, Helvetica, sans-serif"><br> XML SECURITY ERROR<br>Por favor corrija os seus arquivos de policy!</font></b></p>'				
			break;
		case "XML_ParseError":
			field.htmlText = '<p align="center"><b><font color="#FF0000" size="12" face="Verdana, Arial, Helvetica, sans-serif"><br> XML PARSE ERROR<br>Por favor corrija o seu arquivo XML!</font></b></p>'				
			break;
		case "CSS_IOError":
			field.htmlText = '<p align="center"><b><font color="#FF0000" size="12" face="Verdana, Arial, Helvetica, sans-serif"><br> CSS IO ERROR<br>Por favor corrija o caminho do arquivo CSS!</font></b></p>'				
			break;
		case "CSS_SecurityError":
			field.htmlText = '<p align="center"><b><font color="#FF0000" size="12" face="Verdana, Arial, Helvetica, sans-serif"><br> CSS SECURITY ERROR<br>Por favor corrija os seus arquivos de policy!</font></b></p>'				
			break;
		case "CSS_ParseError":
			field.htmlText = '<p align="center"><b><font color="#FF0000" size="12" face="Verdana, Arial, Helvetica, sans-serif"><br> CSS PARSE ERROR<br>Por favor corrija o seu arquivo CSS!</font></b></p>'				
			break;
	}
}