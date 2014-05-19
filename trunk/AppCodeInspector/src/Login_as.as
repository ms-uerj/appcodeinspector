import Domain.Usuario;

import Util.InspectorXUserEnum;

import flash.events.MouseEvent;

import mx.controls.Alert;
import mx.rpc.events.ResultEvent;

import valueObjects.UsuarioEntity;


[Bindable]
public var LoginUsuario:String="Anonymous";

public static var UsuarioLogado:Usuario;

protected function _btnLogar_clickHandler(event:MouseEvent):void
{
	var errorMessage: String = "";
	if (txtUsuario.text=="") 
		errorMessage+="Please, fill user name.\n";
	if (txtSenha.text=="")
		errorMessage+="Please, fill your password.";
	
	if(errorMessage.length==0)
		AutenticarUsuarioResult.token = ws_InspectorX.AutenticarUsuario(txtUsuario.text,txtSenha.text);
	else
	{
		Alert.show(errorMessage);
	}
}
protected function AutenticarUsuarioResult_resultHandler(e:ResultEvent):void
{
	if(e.result == null)
	{
		Alert.show("User not found; please, try again.");
	}
	else
	{	
		UsuarioLogado = new Usuario(e.result as UsuarioEntity); 
		Alert.show("User found! Wellcome!");
		LoginUsuario = txtUsuario.text;

		txtUsuario.text="";
		txtSenha.text="";
		
		this.currentState = "JogoModoSelecao";
		inserirUsuarioTipoIfDontExistResult.token = ws_InspectorX.inserirUsuarioTipoIfDontExist(UsuarioLogado.U_ID, InspectorXUserEnum.FullInspection);
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