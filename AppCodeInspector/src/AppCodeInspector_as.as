import CodeInspector.CSS;
import CodeInspector.XMLLoader;

import flash.display.Stage;
import flash.events.Event;
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
public  static var perguntaAtual:int = 0;

private var pertguntasTotal:int = 10;


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

public static var selectedText:TextRange;

public function onLoad():void
{
	var ta:int = tipoArtefato_Id;
	
	IniciarPartida.token = wSCodeInspector.IniciarPartida(nivelDificuldade,LoginUsuario);

	
	field = new TextArea();

	
	container = new UIComponent();
	this.addElement(container);
	container.addChild(field);
	
	with (field) 
	{
		x = (stage.width/2) - 450;
		y = (stage.height/2) - 320;
		width = 800;
		height = 450;
		multiline = true;
		
		wordWrap = true;
		condenseWhite = true;
		if(nivelDificuldade == 0)
			selectable = false;
		else
			selectable = true;
	}
	
	field.addEventListener(MouseEvent.MOUSE_UP,onMouseUp);
	
	xml = new XMLLoader();
	xml.LoadWS(xmlPerguntasWS);

	xml.addEventListener("XML_Loaded", xmlDone);

	css = new CSS();
	css.Load("Arquivos/styles.css");
	css.addEventListener("CSS_Loaded", cssDone);
}


private function onMouseUp(evt:MouseEvent):void
{
	selectedText = new TextRange(field,false,field.selectionBeginIndex,field.selectionEndIndex);
	var selLength:int = selectedText.endIndex - selectedText.beginIndex;
	
	if(selLength)
	{
		repostaWindow.nivelDificuldade = nivelDificuldade;
			
		PopUpManager.addPopUp(repostaWindow,this,true);
		PopUpManager.centerPopUp(repostaWindow);
	}
}

private function textEvent(e:TextEvent):void 
{	
	repostaWindow.nivelDificuldade = nivelDificuldade;
	PopUpManager.addPopUp(repostaWindow,this,true);
	PopUpManager.centerPopUp(repostaWindow);
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
		
		if(xmlPerguntasWS.length!=0)
		{
			var q:QuestaoEntity = xmlPerguntasWS[perguntaAtual] as QuestaoEntity;
			GetQuestoesTaxonomia.token = wSCodeInspector.GetQuestaoTaxonomia(q.Q_ID);
		}
		
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

protected function GetQuestoesTaxonomia_resultHandler(e:ResultEvent):void
{
	var t:TaxonomiaEntity = e.result as TaxonomiaEntity;
	repostaWindow.questaoTaxonomiaId=t.ID;
}

protected function IniciarPartida_resultHandler(e:ResultEvent):void
{
	partidaAtualId = e.result as int;
}

protected function btnProximaPergunta_clickHandler(event:MouseEvent):void
{
	if(listRespostasSelecionadas.length == 0)
		Alert.show("Selecione o motivo do erro antes de prosseguir");
	else if(questaoTrechosWS.length!=listRespostasSelecionadas.length)
	{
		xml.perguntas[perguntaAtual];
		Alert.show("Ainda faltam defeitos na questão.");
	}
	else
	{
		if(xmlPerguntasWS.length==0)
		{
			Alert.show("Não existem perguntas para os tipos de artefatos selecionados.");
		}
		else
		{
			respostaSelecionada = 0;
			++perguntaAtual;
			
			questaoTrechosWS.removeAll();
			var q:QuestaoEntity = xmlPerguntasWS[perguntaAtual] as QuestaoEntity;
			GetTrechosQuestao.token = wSCodeInspector.GetTrechosDefeito(q.Q_ID);
			GetQuestoesTaxonomia.token = wSCodeInspector.GetQuestaoTaxonomia(q.Q_ID);
			
			verificarRespostas();
			
			pontosTotal =0;
			field.styleSheet = css.sheet;
			
			if (perguntaAtual==(xmlPerguntasWS.length-1))
			{
				Alert.show("O jogo Terminou");
				this.currentState="Login";
			}
			else
			{
				field.htmlText = xml.perguntas[perguntaAtual];
			}
			
		}	
	}
}

protected function verificarRespostas():void
{
	var q:QuestaoEntity = xmlPerguntasWS[perguntaAtual] as QuestaoEntity;
	for (var trechoObejct:Object in questaoTrechosWS)
	{
		var trechoQuestao:TrechoDefeitoEntity = trechoObejct as TrechoDefeitoEntity;
		
		for(var trechoRespostaObject:Object in listRespostasSelecionadas)
		{
			var trechoResposta:TrechoDefeitoEntity = trechoRespostaObject as TrechoDefeitoEntity;
			
			if(nivelDificuldade==FACIL)
			{
				if(trechoQuestao.IT_ID==trechoResposta.IT_ID)
				{
					++pontosTotal;
				}
				else
				{
					Alert.show("Ops! Você errou!\nO trecho correto era: "+trechoQuestao.Conteudo+".\nO defeito associado a este trecho era \""+trechoQuestao.IT_ID.toString()
						+ "\" ("+ trechoQuestao.Explicacao +").");
				}		
			}
			else
			{
				if((trechoQuestao.Conteudo==trechoResposta.Conteudo)&&(trechoQuestao.IT_ID==trechoResposta.IT_ID))
				{
					++pontosTotal;
				}
				else
				{
					Alert.show("Ops! Você errou!\nO trecho correto era: "+trechoQuestao.Conteudo+".\nO defeito associado a este trecho era \""+trechoQuestao.IT_ID.toString()
						+ "\" ("+ trechoQuestao.Explicacao +").");
				}
				
			}
		}
	}
}

protected function SetQuestaoAcerto_resultHandler(e:ResultEvent):void
{
	if(e.result)
		Alert.show("A questão não foi computada!");
}

protected function EncerrarPartidaResult_resultHandler(e:ResultEvent):void
{
	this.currentState = "ResultadoFinal";
}