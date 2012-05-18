import Domain.Usuario;

import Util.InspectorXUserEnum;

import flash.events.MouseEvent;

import mx.controls.Alert;
import mx.rpc.events.ResultEvent;

import valueObjects.UsuarioEntity;


[Bindable]
public var LoginUsuario:String="Anônimo";

public static var UsuarioLogado:Usuario;

protected function _btnLogar_clickHandler(event:MouseEvent):void
{
	var errorMessage: String = "";
	if (txtUsuario.text=="") 
		errorMessage+="Por favor preencha o campo do usuário.\n";
	if (txtSenha.text=="")
		errorMessage+="Por favor digite a senha.";
	
	if(errorMessage.length==0)
		AutenticarUsuarioResult.token = ws_InspectorX.AutenticarUsuario(txtUsuario.text,txtSenha.text);
	else
		Alert.show(errorMessage);
}
protected function AutenticarUsuarioResult_resultHandler(e:ResultEvent):void
{
	if(e.result == null)
	{
		Alert.show("Usuário Inválido, por favor tente novamente.");
	}
	else
	{	
		UsuarioLogado = new Usuario(e.result as UsuarioEntity); 
		Alert.show("Usuário Autenticado com Sucesso! Seja Bem Vindo!");
		LoginUsuario = txtUsuario.text;

		txtUsuario.text="";
		txtSenha.text="";
		
		this.currentState = "JogoModoSelecao";
		
	}
}

protected function lnk_EsqueciSenha_clickHandler(event:MouseEvent):void
{
	this.currentState = "LembrarSenha";
}

protected function lnk_Cadastro_clickHandler(event:MouseEvent):void
{
	this.currentState = "Cadastro";
}

protected function button1_clickHandler(event:MouseEvent):void
{
	NivelDificuldade =1;
	GetUsersRankResult.token = ws_InspectorX.GetUsersRank(NivelDificuldade);
	this.currentState = "ResultadoFinal";
}

protected function button2_clickHandler(event:MouseEvent):void
{
	NivelDificuldade =2;
	GetUsersRankResult.token = ws_InspectorX.GetUsersRank(NivelDificuldade);
	this.currentState = "ResultadoFinal";
}

protected function button3_clickHandler(event:MouseEvent):void
{
	NivelDificuldade =3;
	GetUsersRankResult.token = ws_InspectorX.GetUsersRank(NivelDificuldade);
	this.currentState = "ResultadoFinal";
}