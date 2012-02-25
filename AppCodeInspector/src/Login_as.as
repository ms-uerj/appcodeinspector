import mx.controls.Alert;
import mx.rpc.events.ResultEvent;
import flash.events.MouseEvent;


[Bindable]
public var LoginUsuario:String="Anônimo";
public var SenhaUsuario:String;

protected function _btnLogar_clickHandler(event:MouseEvent):void
{
	AutenticarUsuarioResult.token = wSCodeInspector.AutenticarUsuario(txtUsuario.text,txtSenha.text);
}
protected function AutenticarUsuarioResult_resultHandler(e:ResultEvent):void
{
	if(e.result == false)
	{
		Alert.show("Usuário Inválido, por favor tente novamente.");
	}
	else
	{	
		Alert.show("Usuário Autenticado com Sucesso! Seja Bem Vindo!");
		LoginUsuario = txtUsuario.text;
		SenhaUsuario = txtSenha.text;
		GetTiposArtefato.token = wSCodeInspector.getTiposArtefatos();
		this.currentState = "ArtefatosSelecao";
	}
}

protected function lnk_Cadastro_clickHandler(event:MouseEvent):void
{
	this.currentState = "Cadastro";
}

protected function button1_clickHandler(event:MouseEvent):void
{
	nivelDificuldade =1;
	this.currentState = "ResultadoFinal";
}

protected function button2_clickHandler(event:MouseEvent):void
{
	nivelDificuldade =2;
	this.currentState = "ResultadoFinal";
}

protected function button3_clickHandler(event:MouseEvent):void
{
	nivelDificuldade =3;
	this.currentState = "ResultadoFinal";
}