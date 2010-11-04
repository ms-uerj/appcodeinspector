import CodeInspector.CSS;
import CodeInspector.XMLLoader;

import flash.display.Stage;
import flash.events.MouseEvent;
import flash.events.TextEvent;
import flash.profiler.showRedrawRegions;

import mx.collections.ArrayCollection;
import mx.controls.Alert;
import mx.controls.Label;
import mx.controls.TextArea;
import mx.core.Application;
import mx.core.UIComponent;
import mx.managers.PopUpManager;
import mx.states.AddChild;

private var xml:XMLLoader;
private var css:CSS;
private var field:TextArea;

private var cssBool:Boolean = false;
private var xmlBool:Boolean = false;
private var perguntaNum:int = 0;
[Bindable]
public var listRespostasSelecionadas:ArrayCollection = new ArrayCollection();

[Bindable]
public static var respostaCelecionada:int = 0;
protected var container:UIComponent;
private var repostaWindow:RespostaWindow = new RespostaWindow();
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
		selectable = true;
		wordWrap = true;
		condenseWhite = true; 
	}

	xml = new XMLLoader();
	xml.Load("Arquivos/perguntas.xml");
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

private function cssDone(e:Event):void {
	cssBool = true;
	allDone();
}

private function xmlDone(e:Event):void {
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
	
	if (e.text == "erro")
	{
		PopUpManager.addPopUp(repostaWindow,this,true);
		repostaWindow.cbResposta.selectedIndex = respostaCelecionada;
		PopUpManager.centerPopUp(repostaWindow);
	}
//	if (e.text == "next"){
//		++perguntaNum;
//		field.htmlText = xml.perguntas[perguntaNum];
//	}
//	if (e.text == "prev"){
//		--perguntaNum;
//		field.htmlText = xml.perguntas[perguntaNum];
//	}
}
protected function btnProximaPergunta_clickHandler(event:MouseEvent):void
{
	if(respostaCelecionada == 0)
		Alert.show("Selecione o motivo do erro antes de prosseguir");
	else
	{
		
		listRespostasSelecionadas.addItem("Pergunta Nº "+(perguntaNum+1) + " " + getRespostas(respostaCelecionada));
		
		if(xml.perguntas.length <= perguntaNum +1)
		{
			removeElement(container);
			this.currentState = "ResultadoFinal";
		}
		else
		{
			respostaCelecionada = 0;
			++perguntaNum;
			field.styleSheet = css.sheet;
			field.htmlText = xml.perguntas[perguntaNum];
		}
	}
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