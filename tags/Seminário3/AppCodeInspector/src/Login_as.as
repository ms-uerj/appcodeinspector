import mx.controls.Alert;
protected function btnLogar_clickHandler(event:MouseEvent):void
{
	if((txtUsuario.text == "Vinicius") && (txtSenha.text!=""))
	{
		currentState = "Dificuldade";
	}
	else
	{
		Alert.show("Login Inválido");
	}
}