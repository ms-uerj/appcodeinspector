import flash.display.Stage;
import flash.display.StageAlign;
import flash.display.StageScaleMode;
import flash.events.Event;
import flash.events.MouseEvent;
import flash.utils.flash_proxy;

import flashx.textLayout.elements.TextFlow;

import mx.collections.ArrayCollection;
import mx.controls.Alert;
import mx.controls.textClasses.TextRange;
import mx.core.mx_internal;
import mx.events.FlexEvent;
import mx.events.ResizeEvent;
import mx.rpc.events.ResultEvent;
import mx.states.*;

import valueObjects.TrechoDefeitoEntity;
import valueObjects.TrechoRespostaEntity;

public var PontosTotal:int;
public var PartidaAtualId:int;

//Variáveis globais
public static var NivelDificuldade:int;
public static var TipoArtefato_Id:int;
public static var UsuarioTipoID:int = 0;
public static var QuestaoSelectedText:TextRange;
public static var RespostasSelecionadas:ArrayCollection = new ArrayCollection();
public static var PerguntaAtualIndex:int = 0;

private var acertoClassificacao:String = "A classificação do defeito está correta.";
private var acertoIdentificacao:String = "A identificação do trecho com defeito está correta.\n";




protected function btn_Sair_clickHandler(event:MouseEvent):void
{
	this.currentState = "Login";
	txtUsuario.text="";
	txtSenha.text="";
	NivelDificuldade=0;
	TipoArtefato_Id=0;
	RespostasSelecionadas = new ArrayCollection();
	UsuarioTipoID =0;
	LoginUsuario="Anônimo";
}

protected function btn_VoltarCadastro_clickHandler(event:MouseEvent):void
{
	this.currentState = "Login";
	if(txt_Email!=null)
		txt_Email.text="";
	if(txtUsuario!=null)
		txtUsuario.text="";
	if(txtSenha!=null)
		txtSenha.text="";
}

//Verificando as respostas nos níveis difícil e intermediário
//Usado nos arquivos FullInspec_Inspector_as e Perguntas_as(depricated) 
private function verificarRespostaInterDifi(trechoQuestao:TrechoDefeitoEntity,trechoResposta:TrechoRespostaEntity):void
{
	var pontos:int = 0;
	var mensagem:String = "";
	var trechoCerto:Boolean = false;
	var classificacaoCerta:Boolean = false;
	
	var teste:TextFlow = new TextFlow();
	
	var tq:String = trim(trechoQuestao.Conteudo);
	var tr:String = trim(trechoResposta.TRECHO_RESPOSTA);
	trechoResposta.Q_ID=QuestaoAtualId;
	mensagem=mensagem.concat("Trecho selecionado:\n");
	mensagem=mensagem.concat(tr+"\n\n");
	mensagem=mensagem.concat("Classificação selecionada: "+trechoResposta.classificao+"\n\n" );
	trechoResposta.pontos=0;
	
	if(tq==tr)
	{
		//Marcando Trecho encontrado pelo inspetor.
		trechoQuestao.D_ID=1;
		trechoResposta.pontos=1;
		trechoCerto=true;
		if(trechoQuestao.IT_ID==trechoResposta.IT_ID)
		{
			trechoResposta.pontos=2;
			mensagem=mensagem+ "A identificação e a classificação do defeito estão corretos!";
			classificacaoCerta = true;
			Alert.show(mensagem,"Parabéns!");
		}
	}
	
    if (!classificacaoCerta&&trechoCerto)
	{
		mensagem=mensagem.concat("Você errou apenas a classificação do defeito.\n\n");
		mensagem=mensagem.concat("A classificação correta é:"+trechoQuestao.itemTax.Nome+"\n\n");
		mensagem=mensagem.concat("Explicação do defeito:\n");
		
		mensagem=mensagem.concat(trechoQuestao.Explicacao);
		Alert.show(mensagem,"Atenção");
	}
}

private function trim2( s:String ):String
{
	return s.replace( /^([\s|\t|\n]+)?(.*)([\s|\t|\n]+)?$/gm, "$2" );
}

public static function isWhitespace( ch:String ):Boolean {
	return ch == "\r" || 
		ch == "\n" ||
		ch == "\f" || 
		ch == "\t" ||
		ch == " " ||
		ch.charCodeAt(0)==160;
}

public static function trim( original:String ):String {
	
	var characters:Array = original.split( "" );
	
	for ( var i:int = 0; i < characters.length; i++ ) {
        var temp :int = original.charCodeAt(i);
		if ( isWhitespace( characters[i] ) ) 
		{
			characters.splice( i, 1 );
			i--;
		}
	}
	return characters.join("");
}

private function stripSpaces (input:String):String {
	var original:Array=input.split(" ");
	return(original.join(""));
}

private function setErrorMessage(trecho:String,itemTaxNome:String,explicacao:String):String
{
	var erro: String;
	erro = "O trecho correto era:\n\""+trecho+".\"\n\nO defeito associado a este trecho era: \n\""+itemTaxNome+"\""
		+ "\n\nExplicação: \""+ explicacao +".";
	return erro; 
}

protected function application2_creationCompleteHandler(event:FlexEvent):void
{
	//updateScaling();
	//PopUpManager.centerPopUp (Alert.show("tet"));
}

private function updateScaling():void
{
	this.systemManager.stage.scaleMode = StageScaleMode.SHOW_ALL;
	this.systemManager.stage.align = StageAlign.TOP_LEFT;
	
	if(this.stage.stageWidth != this.width || this.stage.stageHeight != this.height)
	{
		var scaling:Number = 1;
		if(this.width>this.height)
			scaling = this.stage.stageWidth / this.width;
		else
			scaling = this.stage.stageHeight / this.height;
		
		this.scaleX = scaling;
		this.scaleY = scaling;
	}
}


