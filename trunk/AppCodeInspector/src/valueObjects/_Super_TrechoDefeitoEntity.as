/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - TrechoDefeitoEntity.as.
 */

package valueObjects
{
import com.adobe.fiber.services.IFiberManagingService;
import com.adobe.fiber.util.FiberUtils;
import com.adobe.fiber.valueobjects.IValueObject;
import flash.events.Event;
import flash.events.EventDispatcher;
import mx.binding.utils.ChangeWatcher;
import mx.events.PropertyChangeEvent;
import mx.validators.ValidationResult;

import flash.net.registerClassAlias;
import flash.net.getClassByAlias;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;

use namespace model_internal;

[ExcludeClass]
public class _Super_TrechoDefeitoEntity extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
    }

    model_internal var _dminternal_model : _TrechoDefeitoEntityEntityMetadata;

    /**
     * properties
     */
    public var _internal_D_ID : int;
	public var _internal_IT_ID : int;
	public var _internal_Explicacao : String;
	public var _internal_Conteudo : String;

	public static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_TrechoDefeitoEntity()
    {
        _model = new _TrechoDefeitoEntityEntityMetadata(this);

        // Bind to own data properties for cache invalidation triggering
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "Explicacao", model_internal::setterListenerExplicacao));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "Conteudo", model_internal::setterListenerConteudo));

    }

    /**
     * data property getters
     */

    [Bindable(event="propertyChange")]
    public function get D_ID() : int
    {
        return _internal_D_ID;
    }

    [Bindable(event="propertyChange")]
    public function get IT_ID() : int
    {
        return _internal_IT_ID;
    }

    [Bindable(event="propertyChange")]
    public function get Explicacao() : String
    {
        return _internal_Explicacao;
    }

    [Bindable(event="propertyChange")]
    public function get Conteudo() : String
    {
        return _internal_Conteudo;
    }

    /**
     * data property setters
     */

    public function set D_ID(value:int) : void
    {
        var oldValue:int = _internal_D_ID;
        if (oldValue !== value)
        {
            _internal_D_ID = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "D_ID", oldValue, _internal_D_ID));
        }
    }

    public function set IT_ID(value:int) : void
    {
        var oldValue:int = _internal_IT_ID;
        if (oldValue !== value)
        {
            _internal_IT_ID = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "IT_ID", oldValue, _internal_IT_ID));
        }
    }

    public function set Explicacao(value:String) : void
    {
        var oldValue:String = _internal_Explicacao;
        if (oldValue !== value)
        {
            _internal_Explicacao = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "Explicacao", oldValue, _internal_Explicacao));
        }
    }

    public function set Conteudo(value:String) : void
    {
        var oldValue:String = _internal_Conteudo;
        if (oldValue !== value)
        {
            _internal_Conteudo = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "Conteudo", oldValue, _internal_Conteudo));
        }
    }

    /**
     * Data property setter listeners
     *
     * Each data property whose value affects other properties or the validity of the entity
     * needs to invalidate all previously calculated artifacts. These include:
     *  - any derived properties or constraints that reference the given data property.
     *  - any availability guards (variant expressions) that reference the given data property.
     *  - any style validations, message tokens or guards that reference the given data property.
     *  - the validity of the property (and the containing entity) if the given data property has a length restriction.
     *  - the validity of the property (and the containing entity) if the given data property is required.
     */

    model_internal function setterListenerExplicacao(value:flash.events.Event):void
    {
        _model.invalidateDependentOnExplicacao();
    }

    model_internal function setterListenerConteudo(value:flash.events.Event):void
    {
        _model.invalidateDependentOnConteudo();
    }


    /**
     * valid related derived properties
     */
    model_internal var _isValid : Boolean;
    model_internal var _invalidConstraints:Array = new Array();
    model_internal var _validationFailureMessages:Array = new Array();

    /**
     * derived property calculators
     */

    /**
     * isValid calculator
     */
    model_internal function calculateIsValid():Boolean
    {
        var violatedConsts:Array = new Array();
        var validationFailureMessages:Array = new Array();

        var propertyValidity:Boolean = true;
        if (!_model.ExplicacaoIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_ExplicacaoValidationFailureMessages);
        }
        if (!_model.ConteudoIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_ConteudoValidationFailureMessages);
        }

        model_internal::_cacheInitialized_isValid = true;
        model_internal::invalidConstraints_der = violatedConsts;
        model_internal::validationFailureMessages_der = validationFailureMessages;
        return violatedConsts.length == 0 && propertyValidity;
    }

    /**
     * derived property setters
     */

    model_internal function set isValid_der(value:Boolean) : void
    {
        var oldValue:Boolean = model_internal::_isValid;
        if (oldValue !== value)
        {
            model_internal::_isValid = value;
            _model.model_internal::fireChangeEvent("isValid", oldValue, model_internal::_isValid);
        }
    }

    /**
     * derived property getters
     */

    [Transient]
    [Bindable(event="propertyChange")]
    public function get _model() : _TrechoDefeitoEntityEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _TrechoDefeitoEntityEntityMetadata) : void
    {
        var oldValue : _TrechoDefeitoEntityEntityMetadata = model_internal::_dminternal_model;
        if (oldValue !== value)
        {
            model_internal::_dminternal_model = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "_model", oldValue, model_internal::_dminternal_model));
        }
    }

    /**
     * methods
     */


    /**
     *  services
     */
    private var _managingService:com.adobe.fiber.services.IFiberManagingService;

    public function set managingService(managingService:com.adobe.fiber.services.IFiberManagingService):void
    {
        _managingService = managingService;
    }

    model_internal function set invalidConstraints_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_invalidConstraints;
        // avoid firing the event when old and new value are different empty arrays
        if (oldValue !== value && (oldValue.length > 0 || value.length > 0))
        {
            model_internal::_invalidConstraints = value;
            _model.model_internal::fireChangeEvent("invalidConstraints", oldValue, model_internal::_invalidConstraints);
        }
    }

    model_internal function set validationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_validationFailureMessages;
        // avoid firing the event when old and new value are different empty arrays
        if (oldValue !== value && (oldValue.length > 0 || value.length > 0))
        {
            model_internal::_validationFailureMessages = value;
            _model.model_internal::fireChangeEvent("validationFailureMessages", oldValue, model_internal::_validationFailureMessages);
        }
    }

    model_internal var _doValidationCacheOfExplicacao : Array = null;
    model_internal var _doValidationLastValOfExplicacao : String;

    model_internal function _doValidationForExplicacao(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfExplicacao != null && model_internal::_doValidationLastValOfExplicacao == value)
           return model_internal::_doValidationCacheOfExplicacao ;

        _model.model_internal::_ExplicacaoIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isExplicacaoAvailable && _internal_Explicacao == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "Explicacao is required"));
        }

        model_internal::_doValidationCacheOfExplicacao = validationFailures;
        model_internal::_doValidationLastValOfExplicacao = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfConteudo : Array = null;
    model_internal var _doValidationLastValOfConteudo : String;

    model_internal function _doValidationForConteudo(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfConteudo != null && model_internal::_doValidationLastValOfConteudo == value)
           return model_internal::_doValidationCacheOfConteudo ;

        _model.model_internal::_ConteudoIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isConteudoAvailable && _internal_Conteudo == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "Conteudo is required"));
        }

        model_internal::_doValidationCacheOfConteudo = validationFailures;
        model_internal::_doValidationLastValOfConteudo = value;

        return validationFailures;
    }
    

}

}
