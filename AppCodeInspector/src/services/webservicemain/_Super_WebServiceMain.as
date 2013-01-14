/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this service wrapper you may modify the generated sub-class of this class - WebServiceMain.as.
 */
package services.webservicemain
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
import valueObjects.PartidaEntity;
import valueObjects.QuestaoEntity;
import valueObjects.TaxonomiaEntity;
import valueObjects.TipoArtefatoEntity;
import valueObjects.TrechoDefeitoEntity;
import valueObjects.TrechoRespostaEntity;
import valueObjects.UserRankEntity;
import valueObjects.UsuarioEntity;

[ExcludeClass]
internal class _Super_WebServiceMain extends com.adobe.fiber.services.wrapper.WebServiceWrapper
{
    
    // Constructor
    public function _Super_WebServiceMain()
    {
        // initialize service control
        _serviceControl = new mx.rpc.soap.mxml.WebService();
        var operations:Object = new Object();
        var operation:mx.rpc.soap.mxml.Operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "PegarItemsTaxonomia");
        operation.resultElementType = valueObjects.ItemTaxonomiaEntity;
        operations["PegarItemsTaxonomia"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "getUsers");
        operation.resultElementType = valueObjects.UsuarioEntity;
        operations["getUsers"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "getTipoArtefato");
        operation.resultType = valueObjects.TipoArtefatoEntity;
        operations["getTipoArtefato"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "GetTDResposta");
        operation.resultType = valueObjects.ItemTaxonomiaEntity;
        operations["GetTDResposta"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "inserirUsuarioTipoIfDontExist");
        operation.resultType = int;
        operations["inserirUsuarioTipoIfDontExist"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "GetUsersRank");
        operation.resultElementType = valueObjects.UserRankEntity;
        operations["GetUsersRank"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "GetQuestoes");
        operation.resultElementType = valueObjects.QuestaoEntity;
        operations["GetQuestoes"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "getPartidas");
        operation.resultElementType = valueObjects.PartidaEntity;
        operations["getPartidas"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "getUsuariosByPartida");
        operation.resultElementType = valueObjects.UsuarioEntity;
        operations["getUsuariosByPartida"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "criarPartida");
        operation.resultType = valueObjects.PartidaEntity;
        operations["criarPartida"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "getTrechosDefeitoList");
        operation.resultElementType = valueObjects.TrechoDefeitoEntity;
        operations["getTrechosDefeitoList"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "GetTodasQuestoes");
        operation.resultElementType = valueObjects.QuestaoEntity;
        operations["GetTodasQuestoes"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "getTodosUsers");
        operation.resultElementType = valueObjects.UsuarioEntity;
        operations["getTodosUsers"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "updateInicioQuestao");
        operations["updateInicioQuestao"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "getTrechoRespostas");
        operation.resultElementType = valueObjects.TrechoRespostaEntity;
        operations["getTrechoRespostas"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "AlterarUsuario");
        operation.resultType = Boolean;
        operations["AlterarUsuario"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "GetQuestaoTaxonomia");
        operation.resultType = valueObjects.TaxonomiaEntity;
        operations["GetQuestaoTaxonomia"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "getArtefatosInspecionados");
        operation.resultElementType = valueObjects.QuestaoEntity;
        operations["getArtefatosInspecionados"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "getTiposArtefatos");
        operation.resultElementType = valueObjects.TipoArtefatoEntity;
        operations["getTiposArtefatos"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "AutenticarUsuario");
        operation.resultType = valueObjects.UsuarioEntity;
        operations["AutenticarUsuario"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "setTrechoResposta");
        operations["setTrechoResposta"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "relacionarUsrPartida");
        operations["relacionarUsrPartida"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "getArtefatos");
        operation.resultElementType = valueObjects.QuestaoEntity;
        operations["getArtefatos"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "setQuestaoAcerto");
        operation.resultType = Boolean;
        operations["setQuestaoAcerto"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "removerrUsrPartida");
        operations["removerrUsrPartida"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "PegarTaxonomia");
        operation.resultType = valueObjects.TaxonomiaEntity;
        operations["PegarTaxonomia"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "DeletarTaxonomias");
        operation.resultType = Boolean;
        operations["DeletarTaxonomias"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "GetQuestoesByNivel");
        operation.resultElementType = valueObjects.QuestaoEntity;
        operations["GetQuestoesByNivel"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "GetTrechosDefeito");
        operation.resultElementType = valueObjects.TrechoDefeitoEntity;
        operations["GetTrechosDefeito"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "DeletarItemTaxonomia");
        operation.resultType = Boolean;
        operations["DeletarItemTaxonomia"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "setQuestaoAvaliada");
        operation.resultType = Boolean;
        operations["setQuestaoAvaliada"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "removerFullInspectPartida");
        operations["removerFullInspectPartida"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "GetQuestoesRespostas");
        operation.resultElementType = int;
        operations["GetQuestoesRespostas"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "getPartidasInspector");
        operation.resultElementType = valueObjects.PartidaEntity;
        operations["getPartidasInspector"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "DeletarQuestao");
        operation.resultType = Boolean;
        operations["DeletarQuestao"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "RecuperarSenha");
        operation.resultType = Boolean;
        operations["RecuperarSenha"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "AdicionarQuestao");
        operations["AdicionarQuestao"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "InserirTaxonomia");
        operation.resultType = Boolean;
        operations["InserirTaxonomia"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "removerPartidaQuestao");
        operation.resultType = Boolean;
        operations["removerPartidaQuestao"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "AdicionarItemTaxonomia");
        operation.resultType = Boolean;
        operations["AdicionarItemTaxonomia"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "IniciarPartida");
        operation.resultType = int;
        operations["IniciarPartida"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "EncerrarPartida");
        operations["EncerrarPartida"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "getArtefatosPendentes");
        operation.resultElementType = valueObjects.QuestaoEntity;
        operations["getArtefatosPendentes"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "setArtefatoPartida");
        operations["setArtefatoPartida"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "CriarUsuario");
        operation.resultType = Boolean;
        operations["CriarUsuario"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "GetQuestoesByType");
        operation.resultElementType = valueObjects.QuestaoEntity;
        operations["GetQuestoesByType"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "getUsersByArtefato");
        operation.resultElementType = valueObjects.UsuarioEntity;
        operations["getUsersByArtefato"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "setRealacaoTaxonomia");
        operation.resultType = Boolean;
        operations["setRealacaoTaxonomia"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "GetQuestoesTaxList");
        operation.resultElementType = valueObjects.QuestaoEntity;
        operations["GetQuestoesTaxList"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "getUsuariosTipoInspetor");
        operation.resultElementType = valueObjects.UsuarioEntity;
        operations["getUsuariosTipoInspetor"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "setUpdateQuestaoAcerto");
        operations["setUpdateQuestaoAcerto"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "GetTodasQuestoesByUser");
        operation.resultElementType = valueObjects.QuestaoEntity;
        operations["GetTodasQuestoesByUser"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "PegarTaxonomias");
        operation.resultElementType = valueObjects.TaxonomiaEntity;
        operations["PegarTaxonomias"] = operation;

        operation = new mx.rpc.soap.mxml.Operation(null, "GetTaxonomia");
        operation.resultType = valueObjects.TaxonomiaEntity;
        operations["GetTaxonomia"] = operation;

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
    	return "http://localhost:4200/WebService/WebServiceMain.asmx?WSDL";
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
     
    /**
      * This method is a generated wrapper used to call the 'getUsers' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getUsers(id:int, nome:String, email:String, login:String, tipo:String) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getUsers");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(id,nome,email,login,tipo) ;
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
      * This method is a generated wrapper used to call the 'inserirUsuarioTipoIfDontExist' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function inserirUsuarioTipoIfDontExist(usuarioID:int, usuarioTipo:String) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("inserirUsuarioTipoIfDontExist");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(usuarioID,usuarioTipo) ;
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
      * This method is a generated wrapper used to call the 'getPartidas' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getPartidas(usuarioTId:int) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getPartidas");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(usuarioTId) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'getUsuariosByPartida' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getUsuariosByPartida(partidaId:int) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getUsuariosByPartida");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(partidaId) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'criarPartida' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function criarPartida(partDificuldade:int, tipoJogo:String) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("criarPartida");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(partDificuldade,tipoJogo) ;
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
      * This method is a generated wrapper used to call the 'GetTodasQuestoes' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function GetTodasQuestoes() : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("GetTodasQuestoes");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send() ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'getTodosUsers' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getTodosUsers(userTID:int) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getTodosUsers");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(userTID) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'updateInicioQuestao' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function updateInicioQuestao(questaoId:int, partidaId:int) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("updateInicioQuestao");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(questaoId,partidaId) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'getTrechoRespostas' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getTrechoRespostas(usuario_id:int, partida_id:int, questao_id:int) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getTrechoRespostas");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(usuario_id,partida_id,questao_id) ;
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
      * This method is a generated wrapper used to call the 'getArtefatosInspecionados' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getArtefatosInspecionados(usuarioPartida_id:int, partida_id:int) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getArtefatosInspecionados");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(usuarioPartida_id,partida_id) ;
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
      * This method is a generated wrapper used to call the 'setTrechoResposta' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function setTrechoResposta(trechoResposta:ArrayCollection, partida_id:int, user_id:int) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("setTrechoResposta");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(trechoResposta,partida_id,user_id) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'relacionarUsrPartida' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function relacionarUsrPartida(userTid:ArrayCollection, partidaId:int) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("relacionarUsrPartida");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(userTid,partidaId) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'getArtefatos' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getArtefatos(partida_id:int) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getArtefatos");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(partida_id) ;
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
      * This method is a generated wrapper used to call the 'removerrUsrPartida' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function removerrUsrPartida(userTid:int, partidaId:int) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("removerrUsrPartida");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(userTid,partidaId) ;
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
      * This method is a generated wrapper used to call the 'GetQuestoesByNivel' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function GetQuestoesByNivel(nivelDificuldade:int) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("GetQuestoesByNivel");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(nivelDificuldade) ;
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
      * This method is a generated wrapper used to call the 'setQuestaoAvaliada' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function setQuestaoAvaliada(questao_id:int, partidada_id:int, pontos:int) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("setQuestaoAvaliada");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(questao_id,partidada_id,pontos) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'removerFullInspectPartida' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function removerFullInspectPartida(partidaId:int) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("removerFullInspectPartida");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(partidaId) ;
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
      * This method is a generated wrapper used to call the 'getPartidasInspector' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getPartidasInspector(usuarioId:int) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getPartidasInspector");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(usuarioId) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'DeletarQuestao' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function DeletarQuestao(questaoId:int) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("DeletarQuestao");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(questaoId) ;
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
      * This method is a generated wrapper used to call the 'removerPartidaQuestao' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function removerPartidaQuestao(questao_id:int, partidada_id:int) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("removerPartidaQuestao");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(questao_id,partidada_id) ;
        return _internal_token;
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
    public function IniciarPartida(partDificuldade:int, userTipoId:int, tipoJogo:String) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("IniciarPartida");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(partDificuldade,userTipoId,tipoJogo) ;
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
      * This method is a generated wrapper used to call the 'getArtefatosPendentes' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getArtefatosPendentes(usuario_id:int, partida_id:int) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getArtefatosPendentes");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(usuario_id,partida_id) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'setArtefatoPartida' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function setArtefatoPartida(artefato_id:ArrayCollection, partidada_id:int) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("setArtefatoPartida");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(artefato_id,partidada_id) ;
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
    public function GetQuestoesByType(userTipoId:int, nivelDificuldade:int, tipoArtefatoId:int) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("GetQuestoesByType");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(userTipoId,nivelDificuldade,tipoArtefatoId) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'getUsersByArtefato' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getUsersByArtefato(artefoId:int) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getUsersByArtefato");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(artefoId) ;
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
      * This method is a generated wrapper used to call the 'getUsuariosTipoInspetor' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getUsuariosTipoInspetor() : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getUsuariosTipoInspetor");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send() ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'setUpdateQuestaoAcerto' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function setUpdateQuestaoAcerto(questaoId:int, partidaId:int, pontos:int) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("setUpdateQuestaoAcerto");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(questaoId,partidaId,pontos) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'GetTodasQuestoesByUser' operation. It returns an mx.rpc.AsyncToken whose
      * result property will be populated with the result of the operation when the server response is received.
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value.
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function GetTodasQuestoesByUser(userTipoId:int, nivelDificuldade:int) : mx.rpc.AsyncToken
    {
        model_internal::loadWSDLIfNecessary();
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("GetTodasQuestoesByUser");
        var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(userTipoId,nivelDificuldade) ;
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
     
}

}
