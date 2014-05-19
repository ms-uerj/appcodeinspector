import flash.events.MouseEvent;
import mx.rpc.events.ResultEvent;
import mx.controls.Alert;

protected function btn_EnviarEmail_clickHandler(event:MouseEvent):void
{
	frmi_Email.validateNow();
	
	//RecuperarSenha.token=ws_InspectorX.RecuperarSenha(txt_Email.text);ortografia
}

protected function RecuperarSenha_resultHandler(e:ResultEvent):void
{
	if(e.result==true)
	{
        Alert.show("Email was sent with your password.");
		txt_Email.text="";
	}
	else
		Alert.show("Sorry, but this email was not found; try verifying spelling.\n"
			+"If unsuccessful, please register again.");
}