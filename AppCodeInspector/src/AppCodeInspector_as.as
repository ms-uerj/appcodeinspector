import flash.events.MouseEvent;

import flashx.textLayout.elements.TextFlow;

import mx.collections.ArrayCollection;
import mx.controls.Alert;
import mx.controls.textClasses.TextRange;
import mx.core.UIComponent;
import mx.rpc.events.ResultEvent;
import mx.states.*;
import mx.utils.StringUtil;

import valueObjects.TrechoDefeitoEntity;

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
	//Alert.show("Usuario saiu com sucesso!");
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
//Usado nos arquivos FullInspec_Inspector_as e Perguntas_as 
private function verificarRespostaInterDifi(trechoQuestao:TrechoDefeitoEntity,trechoResposta:TrechoDefeitoEntity):int
{
	var pontos:int = 0;
	var mensagem:String = "";
	var trechoCerto:Boolean = false;
	var classificacaoCerta:Boolean = false;
	
	var teste:TextFlow = new TextFlow();

	var tq:String = trim(trechoQuestao.Conteudo);
	var tr:String = trim(trechoResposta.Conteudo);
	
	if(tq==tr)
	{
		++pontos;
		mensagem=mensagem+ "A identificação do trecho com defeito está correta.\n";
		trechoCerto=true;
		if(trechoQuestao.IT_ID==trechoResposta.IT_ID)
		{
			++pontos;
			mensagem=mensagem+ "A classificação do defeito está correta.";
			classificacaoCerta = true;
		}
		Alert.show(mensagem.toString(),"Você acertou!");
	}
	
	var alertTitle:String = "";
	if (!classificacaoCerta&&trechoCerto)
	{
		var erro: String;
		alertTitle = "Ops! Você errou a classificação do defeito.";
		erro = setErrorMessage(trechoQuestao.Conteudo,getItemTaxonomia(trechoQuestao.IT_ID).Nome,trechoQuestao.Explicacao);
		Alert.show(erro,"Ops! Você errou!");
	} else if (!trechoCerto)
	{
		var erro2: String;
		alertTitle = "Ops! Você errou a identificação.";
		erro2 = setErrorMessage(trechoQuestao.Conteudo,getItemTaxonomia(trechoQuestao.IT_ID).Nome,trechoQuestao.Explicacao);
		Alert.show(erro2,"Ops! Você errou!");
	}
	return pontos;
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

protected function updateInicioQuestaoResult_resultHandler(e:ResultEvent):void
{
	
}









