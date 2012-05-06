import flash.events.MouseEvent;
import mx.rpc.events.ResultEvent;
import mx.controls.Alert;

protected function btn_EnviarEmail_clickHandler(event:MouseEvent):void
{
	frmi_Email.validateNow();
	
	//RecuperarSenha.token=ws_InspectorX.RecuperarSenha(txt_Email.text);
}

protected function RecuperarSenha_resultHandler(e:ResultEvent):void
{
	if(e.result==true)
	{
        Alert.show("Você deve receber a sua senha no email em alguns minutos");
		txt_Email.text="";
	}
	else
		Alert.show("Desculpe, mas este e-mail não se encontra cadastrado; favor verificar a ortografia e tentar novamente.");
}