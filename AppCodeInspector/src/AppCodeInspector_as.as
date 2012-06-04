import flash.events.MouseEvent;

import mx.collections.ArrayCollection;
import mx.controls.Alert;
import mx.controls.textClasses.TextRange;
import mx.core.UIComponent;
import mx.states.*;
import valueObjects.TrechoDefeitoEntity;
import mx.rpc.events.ResultEvent;


public var PontosTotal:int;
public var PartidaAtualId:int;


//Variáveis globais
public static var NivelDificuldade:int;
public static var TipoArtefato_Id:int;
public static var UsuarioTipoID:int = 0;
public static var QuestaoSelectedText:TextRange;
public static var RespostasSelecionadas:ArrayCollection = new ArrayCollection();

public static var PerguntaAtualIndex:int = 0;

private static var acertoClassificacao:String = "A classificação do defeito está correta.";
private static var acertoIdentificacao:String = "A identificação do trecho com defeito está correta.";


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
private function verificarRespostaInterDifi(trechoQuestao:TrechoDefeitoEntity,trechoResposta:TrechoDefeitoEntity,pontos:int):void
{
	var acertos:Array = new Array();
	var trechoCerto:Boolean = false;
	var classificacaoCerta:Boolean = false;
	
	if(trechoQuestao.Conteudo==trechoResposta.Conteudo)
	{
		++pontos;
		acertos.join(acertoIdentificacao+"\n");
		trechoCerto=true;
		if(trechoQuestao.IT_ID==trechoResposta.IT_ID)
		{
			++pontos;
			acertos.join(acertoClassificacao);
			classificacaoCerta = true;
		}
		Alert.show(acertos.toString());
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
}

private function setErrorMessage(trecho:String,itemTaxNome:String,explicacao:String):String
{
	var erro: String;
	erro = "O trecho correto era:\n\""+trecho+".\n\nO defeito associado a este trecho era: \n\""+itemTaxNome+"\""
		+ "\n\nExplicação: \""+ explicacao +".";
	return erro;
}

protected function updateInicioQuestaoResult_resultHandler(e:ResultEvent):void
{
	
}









