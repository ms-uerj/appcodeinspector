import mx.rpc.events.ResultEvent;
import flash.events.MouseEvent;
import mx.controls.Alert;

protected function btn_ConfirmarCadstro_clickHandler(event:MouseEvent):void
{
	
	CriarUsuarioResult.token = ws_InspectorX.CriarUsuario(txtUsuario.text, txtUsuario.text,txt_Email.text, txtSenha.text,ddl_UsuarioTipoCad.selectedItem);
	
}
protected function CriarUsuarioResult_resultHandler(e:ResultEvent):void
{
	if(e.result == false)
	{
		Alert.show("Erro ao tentar criar usuario");
	}
	else
	{	
		Alert.show("Usuário criado com Sucesso! Seja Bem Vindo!");
		txtUsuario.text="";
		txtSenha.text="";
		txt_Email.text="";
		ddl_UsuarioTipoCad.selectedIndex = -1;
		this.currentState = "Login";
	}
}

