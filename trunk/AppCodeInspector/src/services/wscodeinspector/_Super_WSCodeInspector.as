/**
 * This is a generated class and is not intended for modfication.  To customize behavior
 * of this service wrapper you may modify the generated sub-class of this class - WSCodeInspector.as.
 */
package services.wscodeinspector
{
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.services.wrapper.WebServiceWrapper;
import com.adobe.serializers.utility.TypeUtility;
import mx.rpc.AbstractOperation;
import mx.rpc.AsyncToken;
import mx.rpc.soap.mxml.Operation;
import mx.rpc.soap.mxml.WebService;
import valueObjects.RankRetorno;

[ExcludeClass]
internal class _Super_WSCodeInspector extends com.adobe.fiber.services.wrapper.WebServiceWrapper
{
     
    // Constructor
    public function _Super_WSCodeInspector()
    {
        // initialize service control
        _serviceControl = new mx.rpc.soap.mxml.WebService();
        var operations:Object = new Object();
        var operation:mx.rpc.soap.mxml.Operation;
         
        operation = new mx.rpc.soap.mxml.Operation(null, "GetQuestoes");
		 operation.resultElementType = String;
        operations["GetQuestoes"] = operation;
    
        operation = new mx.rpc.soap.mxml.Operation(null, "EncerrarPartida");
        operations["EncerrarPartida"] = operation;
    
        operation = new mx.rpc.soap.mxml.Operation(null, "AlterarUsuario");
		 operation.resultType = Boolean; 		 
        operations["AlterarUsuario"] = operation;
    
        operation = new mx.rpc.soap.mxml.Operation(null, "GetUsersRank");
		 operation.resultElementType = valueObjects.RankRetorno;
        operations["GetUsersRank"] = operation;
    
        operation = new mx.rpc.soap.mxml.Operation(null, "CriarUsuario");
		 operation.resultType = Boolean; 		 
        operations["CriarUsuario"] = operation;
    
        operation = new mx.rpc.soap.mxml.Operation(null, "AdicionarQuestao");
        operations["AdicionarQuestao"] = operation;
    
        operation = new mx.rpc.soap.mxml.Operation(null, "AutenticarUsuario");
		 operation.resultType = Boolean; 		 
        operations["AutenticarUsuario"] = operation;
    
        _serviceControl.operations = operations;
        try
        {
            _serviceControl.convertResultHandler = com.adobe.serializers.utility.TypeUtility.convertResultHandler;
        }
        catch (e: Error)
        { /* Flex 3.4 and eralier does not support the convertResultHandler functionality. */ }

  

        _serviceControl.service = "WebServiceMain";
        _serviceControl.port = "WebServiceMainSoap";
        wsdl = "http://localhost:4200/WebService/WebServiceMain.asmx?wsdl";
        model_internal::loadWSDLIfNecessary();
      
     
        model_internal::initialize();
    }

	/**
	  * This method is a generated wrapper used to call the 'GetQuestoes' operation. It returns an mx.rpc.AsyncToken whose 
	  * result property will be populated with the result of the operation when the server response is received. 
	  * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
	  * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
	  */          
	public function GetQuestoes(nivelDificuldade:int) : mx.rpc.AsyncToken
	{
		model_internal::loadWSDLIfNecessary();
		var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("GetQuestoes");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(nivelDificuldade) ;

		return _internal_token;
	}   
	 
	/**
	  * This method is a generated wrapper used to call the 'EncerrarPartida' operation. It returns an mx.rpc.AsyncToken whose 
	  * result property will be populated with the result of the operation when the server response is received. 
	  * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
	  * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
	  */          
	public function EncerrarPartida(nivelDificuldade:int, respostasXML:String, userEmail:String) : mx.rpc.AsyncToken
	{
		model_internal::loadWSDLIfNecessary();
		var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("EncerrarPartida");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(nivelDificuldade,respostasXML,userEmail) ;

		return _internal_token;
	}   
	 
	/**
	  * This method is a generated wrapper used to call the 'AlterarUsuario' operation. It returns an mx.rpc.AsyncToken whose 
	  * result property will be populated with the result of the operation when the server response is received. 
	  * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
	  * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
	  */          
	public function AlterarUsuario(loginAtual:String, senhaAtual:String, novoNome:String, novoLogin:String, novaSenha:String, novoEmail:String) : mx.rpc.AsyncToken
	{
		model_internal::loadWSDLIfNecessary();
		var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("AlterarUsuario");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(loginAtual,senhaAtual,novoNome,novoLogin,novaSenha,novoEmail) ;

		return _internal_token;
	}   
	 
	/**
	  * This method is a generated wrapper used to call the 'GetUsersRank' operation. It returns an mx.rpc.AsyncToken whose 
	  * result property will be populated with the result of the operation when the server response is received. 
	  * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
	  * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
	  */          
	public function GetUsersRank(nivelDificuldade:int) : mx.rpc.AsyncToken
	{
		model_internal::loadWSDLIfNecessary();
		var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("GetUsersRank");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(nivelDificuldade) ;

		return _internal_token;
	}   
	 
	/**
	  * This method is a generated wrapper used to call the 'CriarUsuario' operation. It returns an mx.rpc.AsyncToken whose 
	  * result property will be populated with the result of the operation when the server response is received. 
	  * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
	  * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
	  */          
	public function CriarUsuario(nome:String, login:String, email:String, senha:String) : mx.rpc.AsyncToken
	{
		model_internal::loadWSDLIfNecessary();
		var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("CriarUsuario");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(nome,login,email,senha) ;

		return _internal_token;
	}   
	 
	/**
	  * This method is a generated wrapper used to call the 'AdicionarQuestao' operation. It returns an mx.rpc.AsyncToken whose 
	  * result property will be populated with the result of the operation when the server response is received. 
	  * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
	  * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
	  */          
	public function AdicionarQuestao(nivelDificuladade:int, xmlQuestao:String, tempo:int) : mx.rpc.AsyncToken
	{
		model_internal::loadWSDLIfNecessary();
		var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("AdicionarQuestao");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(nivelDificuladade,xmlQuestao,tempo) ;

		return _internal_token;
	}   
	 
	/**
	  * This method is a generated wrapper used to call the 'AutenticarUsuario' operation. It returns an mx.rpc.AsyncToken whose 
	  * result property will be populated with the result of the operation when the server response is received. 
	  * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
	  * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
	  */          
	public function AutenticarUsuario(login:String, senha:String) : mx.rpc.AsyncToken
	{
		model_internal::loadWSDLIfNecessary();
		var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("AutenticarUsuario");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(login,senha) ;

		return _internal_token;
	}   
	 
}

}
