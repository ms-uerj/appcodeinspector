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
	AutenticarUsuarioResult.token = ws_InspectorX.AutenticarUsuario(txtUsuario.text,txtSenha.text);
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
		
		if (UsuarioLogado.U_TIPO==InspectorXUserEnum.Moderador) 
		{
			this.currentState = "FullInspec_Admin";
			GetPartidasResult.token = ws_InspectorX.getPartidas(UsuarioLogado.U_ID);
		}
		else if (UsuarioLogado.U_TIPO==InspectorXUserEnum.Inspetor) 
		{
			this.currentState = "JogoModo";
		}
	}
}

protected function lnk_EsqueciSenha_clickHandler(event:MouseEvent):void
{
	this.currentState = "LembrarSenha";
}

protected function lnk_Cadastro_clickHandler(event:MouseEvent):void
{
	this.currentState = "Cadastro";
	ddl_UsuarioTipoCad.dataProvider=InspectorXUserEnum.InspectorXEnumList();
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