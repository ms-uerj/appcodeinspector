/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this service wrapper you may modify the generated sub-class of this class - Wscodeinspector.as.
 */
package services.wscodeinspector
{
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.services.wrapper.WebServiceWrapper;
import com.adobe.serializers.utility.TypeUtility;
import mx.collections.ArrayCollection;
import mx.rpc.AbstractOperation;
import mx.rpc.AsyncToken;
import mx.rpc.soap.mxml.Operation;
import mx.rpc.soap.mxml.WebService;
import valueObjects.ItemTaxonomiaEntity;
import valueObjects.QuestaoEntity;
import valueObjects.TaxonomiaEntity;
import valueObjects.TipoArtefatoEntity;
import valueObjects.TrechoDefeitoEntity;

[ExcludeClass]
internal class _Super_Wscodeinspector extends com.adobe.fiber.services.wrapper.WebServiceWrapper
{
    
    // Constructor
    public function _Super_Wscodeinspector()
    {
        // initialize service control
        _serviceControl = new mx.rpc.soap.mxml.WebService();
        var operations:Object = new Object();
        var operation:mx.rpc.soap.mxml.Operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "AdicionarItemTaxonomia");
        operation.resultType = Boolean;
        operations["AdicionarItemTaxonomia"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "AutenticarUsuario");
        operation.resultType = Boolean;
        operations["AutenticarUsuario"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "DeletarItemTaxonomia");
        operation.resultType = Boolean;
        operations["DeletarItemTaxonomia"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "GetTrechosDefeito");
        operation.resultElementType = valueObjects.TrechoDefeitoEntity;
        operations["GetTrechosDefeito"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "PegarTaxonomias");
        operation.resultElementType = valueObjects.TaxonomiaEntity;
        operations["PegarTaxonomias"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "IniciarPartida");
        operation.resultType = int;
        operations["IniciarPartida"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "getTipoArtefato");
        operation.resultType = valueObjects.TipoArtefatoEntity;
        operations["getTipoArtefato"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "GetQuestoes");
        operation.resultElementType = valueObjects.QuestaoEntity;
        operations["GetQuestoes"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "AdicionarQuestao");
        operations["AdicionarQuestao"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "setRealacaoTaxonomia");
        operation.resultType = Boolean;
        operations["setRealacaoTaxonomia"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "GetTaxonomia");
        operation.resultType = valueObjects.TaxonomiaEntity;
        operations["GetTaxonomia"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "InserirTaxonomia");
        operation.resultType = Boolean;
        operations["InserirTaxonomia"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "getTiposArtefatos");
        operation.resultElementType = valueObjects.TipoArtefatoEntity;
        operations["getTiposArtefatos"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "EncerrarPartida");
        operations["EncerrarPartida"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "AlterarUsuario");
        operation.resultType = Boolean;
        operations["AlterarUsuario"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "setQuestaoAcerto");
        operation.resultType = Boolean;
        operations["setQuestaoAcerto"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "PegarTaxonomia");
        operation.resultType = valueObjects.TaxonomiaEntity;
        operations["PegarTaxonomia"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "CriarUsuario");
        operation.resultType = Boolean;
        operations["CriarUsuario"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "GetTDResposta");
        operation.resultType = valueObjects.ItemTaxonomiaEntity;
        operations["GetTDResposta"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "EncerrarPartida2");
        operations["EncerrarPartida2"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "RecuperarSenha");
        operations["RecuperarSenha"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "getTrechosDefeitoList");
        operation.resultElementType = valueObjects.TrechoDefeitoEntity;
        operations["getTrechosDefeitoList"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "DeletarTaxonomias");
        operation.resultType = Boolean;
        operations["DeletarTaxonomias"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "GetQuestoesRespostas");
        operation.resultElementType = int;
        operations["GetQuestoesRespostas"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "GetQuestoesTaxList");
        operation.resultElementType = valueObjects.QuestaoEntity;
        operations["GetQuestoesTaxList"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "GetQuestaoTaxonomia");
        operation.resultType = valueObjects.TaxonomiaEntity;
        operations["GetQuestaoTaxonomia"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "GetQuestoesByType");
        operation.resultElementType = valueObjects.QuestaoEntity;
        operations["GetQuestoesByType"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "PegarItemsTaxonomia");
        operation.resultElementType = valueObjects.ItemTaxonomiaEntity;
        operations["PegarItemsTaxonomia"] = operation;

        _serviceControl.operations = operations;
        try
        {
            _serviceControl.convertResultHandler = com.adobe.serializers.utility.TypeUtility.convertResultHandler;
        }
        catch (e: Error)
        { /* Flex 3.4 and earlier does not support the convertResultHandler functionality. */ }


        preInitializeService();
        model_internal::initialize();
    }
    
    //init initialization routine here, child class to override
    protected function preInitializeService():void
    {


        _serviceControl.service = getWSDLServiceName();
        _serviceControl.port = getWSDLPort();
        wsdl = getWSDLURL(); 
        model_internal::loadWSDLIfNecessary();
    }

	protected function getWSDLServiceName():String
	{
        return "WebServiceMain";
    }

	protected function getWSDLPort():String
	{
		return "WebServiceMainSoap";
	}

    protected function getWSDLURL():String
    {
    	return "http://inspectorx.linksysnet.com:8080/WebServiceAcess_deploy/webservice/webserviceMain.asmx?WSDL";
    }
    

    /**
      * This method is a generated wrapper used to call the 'AdicionarItemTaxonomia' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function AdicionarItemTaxonomia(taxonomia_id:int, nome:String, descricao:String) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("AdicionarItemTaxonomia");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(taxonomia_id,nome,descricao) ;
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
     
    /**
      * This method is a generated wrapper used to call the 'DeletarItemTaxonomia' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function DeletarItemTaxonomia(taxonomia_id:int) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("DeletarItemTaxonomia");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(taxonomia_id) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'GetTrechosDefeito' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function GetTrechosDefeito(questao_id:int) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("GetTrechosDefeito");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(questao_id) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'PegarTaxonomias' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function PegarTaxonomias() : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("PegarTaxonomias");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send() ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'IniciarPartida' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function IniciarPartida(partDificuldade:int, userLogin:String) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("IniciarPartida");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(partDificuldade,userLogin) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'getTipoArtefato' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getTipoArtefato(taxId:int) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getTipoArtefato");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(taxId) ;
        return _internal_token;
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
    public function GetQuestoes(nivelDificuldade:int, taxonomia_id:int) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("GetQuestoes");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(nivelDificuldade,taxonomia_id) ;
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
    public function AdicionarQuestao(questao:valueObjects.QuestaoEntity, tdList:ArrayCollection) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("AdicionarQuestao");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(questao,tdList) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'setRealacaoTaxonomia' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function setRealacaoTaxonomia(taxId:int, tipoArtId:int) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("setRealacaoTaxonomia");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(taxId,tipoArtId) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'GetTaxonomia' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function GetTaxonomia(tipoArtefatoId:int) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("GetTaxonomia");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(tipoArtefatoId) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'InserirTaxonomia' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function InserirTaxonomia(nome:String) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("InserirTaxonomia");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(nome) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'getTiposArtefatos' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getTiposArtefatos() : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getTiposArtefatos");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send() ;
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
    public function EncerrarPartida(partidaEncerrada_id:int, pontuacaoTotal:int) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("EncerrarPartida");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(partidaEncerrada_id,pontuacaoTotal) ;
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
      * This method is a generated wrapper used to call the 'setQuestaoAcerto' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function setQuestaoAcerto(questao_id:int, partidada_id:int, pontos:int) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("setQuestaoAcerto");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(questao_id,partidada_id,pontos) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'PegarTaxonomia' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function PegarTaxonomia(nome:String) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("PegarTaxonomia");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(nome) ;
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
      * This method is a generated wrapper used to call the 'GetTDResposta' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function GetTDResposta(td_id:int) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("GetTDResposta");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(td_id) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'EncerrarPartida2' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function EncerrarPartida2(nivelDificuldade:int, respostasXML:String, userEmail:String) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("EncerrarPartida2");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(nivelDificuldade,respostasXML,userEmail) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'RecuperarSenha' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function RecuperarSenha(email:String) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("RecuperarSenha");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(email) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'getTrechosDefeitoList' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getTrechosDefeitoList(itemTaxonomiaId:int) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getTrechosDefeitoList");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(itemTaxonomiaId) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'DeletarTaxonomias' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function DeletarTaxonomias(taxonomia:int) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("DeletarTaxonomias");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(taxonomia) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'GetQuestoesRespostas' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function GetQuestoesRespostas(nivelDificuldade:int) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("GetQuestoesRespostas");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(nivelDificuldade) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'GetQuestoesTaxList' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function GetQuestoesTaxList(tax_id:int) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("GetQuestoesTaxList");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(tax_id) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'GetQuestaoTaxonomia' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function GetQuestaoTaxonomia(questaoId:int) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("GetQuestaoTaxonomia");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(questaoId) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'GetQuestoesByType' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function GetQuestoesByType(nivelDificuldade:int, tipoArtefatoId:int) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("GetQuestoesByType");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(nivelDificuldade,tipoArtefatoId) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'PegarItemsTaxonomia' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function PegarItemsTaxonomia(taxonomia_id:int) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("PegarItemsTaxonomia");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(taxonomia_id) ;
        return _internal_token;
    }
     
}

}
