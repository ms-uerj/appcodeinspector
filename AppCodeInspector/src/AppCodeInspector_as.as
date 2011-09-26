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

import valueObjects.QuestaoEntity;
import valueObjects.TaxonomiaEntity;
import valueObjects.TrechoDefeitoEntity;

private var xml:XMLLoader;
private var css:CSS;
private var field:TextArea;

private var cssBool:Boolean = false;
private var xmlBool:Boolean = false;
public  static var perguntaNum:int = 0;


[Bindable]
public static var listRespostasSelecionadas:ArrayCollection = new ArrayCollection();

[Bindable]
public static var respostaSelecionada:int = 0;

public var pontosTotal:int;
public var partidaAtualId:int;

protected var container:UIComponent;
public var repostaWindow:RespostaWindow = new RespostaWindow();

public var xmlPerguntasWS:ArrayCollection;
public var questaoTrechosWS:ArrayCollection;
public var taxonomias:ArrayCollection;

public var tiposArtefato:ArrayCollection;

public static var nivelDificuldade:int;

public static var tipoArtefato_Id:int;
public static var taxonomia_Id:int;


public static var respostas:ArrayCollection = new ArrayCollection();
public static var respostaIndexAtual:int = 0;
public static var selection:TextRange;

public function onLoad():void
{
	GetTaxonomia.token = wSCodeInspector.GetTaxonomia(tipoArtefato_Id);
	IniciarPartida.token = wSCodeInspector.IniciarPartida(nivelDificuldade,LoginUsuario);
	
	field = new TextArea();
	container = new UIComponent();
	addElement(container);
	container.addChild(field);
	
	with (field) 
	{
		x = (stage.width/2) - 400;
		y = (stage.height/2) - 200;
		width = 800;
		height = 450;
		multiline = true;
		
		wordWrap = true;
		condenseWhite = true;
		if(nivelDificuldade == 1)
			selectable = false;
		else
			selectable = true;
	}
	
	field.addEventListener(MouseEvent.MOUSE_UP,onMouseUp);
	
	xml = new XMLLoader();
	xml.LoadWS(xmlPerguntasWS);

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
		var q:QuestaoEntity = xmlPerguntasWS[perguntaNum] as QuestaoEntity;
		
		field.htmlText = q.Q_XML;
		
		//field.htmlText = xml.perguntas[perguntaNum];	
		var ws:services.wscodeinspector.WSCodeInspector = new WSCodeInspector();
		
		GetTrechosQuestao.token = ws.GetTrechosDefeito(q.Q_ID);
		field.addEventListener(TextEvent.LINK, textEvent);
	}
}

protected function GetTrechosQuestao_resultHandler(e:ResultEvent):void
{
	questaoTrechosWS = ArrayCollection(e.result);
}

protected function GetTaxonomia_resultHandler(e:ResultEvent):void
{
	var t:TaxonomiaEntity = e.result as TaxonomiaEntity;
	repostaWindow.questaoTaxonomiaId=taxonomia_Id;
}

protected function IniciarPartida_resultHandler(e:ResultEvent):void
{
	partidaAtualId = e.result as int;
}

private function textEvent(e:TextEvent):void 
{	
	PopUpManager.addPopUp(repostaWindow,this,true);
	
	if(respostas.length  != 0)
		repostaWindow.cbResposta.selectedIndex = (Resposta)(respostas.getItemAt(parseInt(e.text)-1)).motivoErroId;
	PopUpManager.centerPopUp(repostaWindow);
}

protected function btnProximaPergunta_clickHandler(event:MouseEvent):void
{
	if(listRespostasSelecionadas.length == 0)
		Alert.show("Selecione o motivo do erro antes de prosseguir");
	else if(questaoTrechosWS.length!=listRespostasSelecionadas.length)
	{
		xml.perguntas[perguntaNum]
		Alert.show("Ainda faltam defeitos na questão.")
	}
	else
	{
		if(xmlPerguntasWS.length <= perguntaNum +1)
		{
				
		}
		else
		{
			respostaSelecionada = 0;
			++perguntaNum;
			
			questaoTrechosWS.removeAll();
			var q:QuestaoEntity = xmlPerguntasWS[perguntaNum] as QuestaoEntity;
			verificarRespostas();
			
			GetTrechosQuestao.token = wSCodeInspector.GetTrechosDefeito(q.Q_ID);		
			pontosTotal =0;
			field.styleSheet = css.sheet;
			field.htmlText = xml.perguntas[perguntaNum];
		}
		
	}
}

protected function verificarRespostas():void
{
	var q:QuestaoEntity = xmlPerguntasWS[perguntaNum] as QuestaoEntity;
	for (var trechoObejct:Object in questaoTrechosWS)
	{
		var trechoQuestao:TrechoDefeitoEntity = trechoObejct as TrechoDefeitoEntity;
		
		for(var trechoRespostaObject:Object in listRespostasSelecionadas)
		{
			var trechoResposta:TrechoDefeitoEntity = trechoRespostaObject as TrechoDefeitoEntity;
	
			if((trechoQuestao._internal_Conteudo==trechoResposta._internal_Conteudo)&&(trechoQuestao._internal_IT_ID==trechoResposta._internal_IT_ID))
			{
				++pontosTotal;
			}
			else
			{
				Alert.show("Ops! Você errou!\nO trecho correto era: "+trechoQuestao.Conteudo+".\nO defeito associado a este trecho era \""+trechoQuestao.IT_ID.toString()
				+ "\" ("+ trechoQuestao._internal_Explicacao +").");
			}
		}
	}
	SetQuestaoAcerto.token = wSCodeInspector.setQuestaoAcerto(partidaAtualId,q.Q_ID,pontosTotal);
}

protected function SetQuestaoAcerto_resultHandler(e:ResultEvent):void
{
	if(e.result)
		Alert.show("Questão não foi computada!");
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