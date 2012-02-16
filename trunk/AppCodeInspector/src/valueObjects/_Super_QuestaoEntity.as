/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - QuestaoEntity.as.
 */

package valueObjects
{
import com.adobe.fiber.services.IFiberManagingService;
import com.adobe.fiber.util.FiberUtils;
import com.adobe.fiber.valueobjects.IValueObject;
import flash.events.Event;
import flash.events.EventDispatcher;
import mx.binding.utils.ChangeWatcher;
import mx.collections.ArrayCollection;
import mx.events.PropertyChangeEvent;
import mx.validators.ValidationResult;

import flash.net.registerClassAlias;
import flash.net.getClassByAlias;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;

use namespace model_internal;

[ExcludeClass]
public class _Super_QuestaoEntity extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
    }

    model_internal var _dminternal_model : _QuestaoEntityEntityMetadata;
    model_internal var _changedObjects:mx.collections.ArrayCollection = new ArrayCollection();

    public function getChangedObjects() : Array
    {
        _changedObjects.addItemAt(this,0);
        return _changedObjects.source;
    }

    public function clearChangedObjects() : void
    {
        _changedObjects.removeAll();
    }

    /**
     * properties
     */
    private var _internal_Q_ID : int;
    private var _internal_Q_Nivel_Dificuldade : int;
    private var _internal_Q_XML : String;
    private var _internal_Q_TEMPO : int;
    private var _internal_Q_nome : String;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_QuestaoEntity()
    {
        _model = new _QuestaoEntityEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "Q_XML", model_internal::setterListenerQ_XML));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "Q_nome", model_internal::setterListenerQ_nome));

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get Q_ID() : int
    {
        return _internal_Q_ID;
    }

    [Bindable(event="propertyChange")]
    public function get Q_Nivel_Dificuldade() : int
    {
        return _internal_Q_Nivel_Dificuldade;
    }

    [Bindable(event="propertyChange")]
    public function get Q_XML() : String
    {
        return _internal_Q_XML;
    }

    [Bindable(event="propertyChange")]
    public function get Q_TEMPO() : int
    {
        return _internal_Q_TEMPO;
    }

    [Bindable(event="propertyChange")]
    public function get Q_nome() : String
    {
        return _internal_Q_nome;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set Q_ID(value:int) : void
    {
        var oldValue:int = _internal_Q_ID;
        if (oldValue !== value)
        {
            _internal_Q_ID = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "Q_ID", oldValue, _internal_Q_ID));
        }
    }

    public function set Q_Nivel_Dificuldade(value:int) : void
    {
        var oldValue:int = _internal_Q_Nivel_Dificuldade;
        if (oldValue !== value)
        {
            _internal_Q_Nivel_Dificuldade = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "Q_Nivel_Dificuldade", oldValue, _internal_Q_Nivel_Dificuldade));
        }
    }

    public function set Q_XML(value:String) : void
    {
        var oldValue:String = _internal_Q_XML;
        if (oldValue !== value)
        {
            _internal_Q_XML = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "Q_XML", oldValue, _internal_Q_XML));
        }
    }

    public function set Q_TEMPO(value:int) : void
    {
        var oldValue:int = _internal_Q_TEMPO;
        if (oldValue !== value)
        {
            _internal_Q_TEMPO = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "Q_TEMPO", oldValue, _internal_Q_TEMPO));
        }
    }

    public function set Q_nome(value:String) : void
    {
        var oldValue:String = _internal_Q_nome;
        if (oldValue !== value)
        {
            _internal_Q_nome = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "Q_nome", oldValue, _internal_Q_nome));
        }
    }

    /**
     * Data/source property setter listeners
     *
     * Each data property whose value affects other properties or the validity of the entity
     * needs to invalidate all previously calculated artifacts. These include:
     *  - any derived properties or constraints that reference the given data property.
     *  - any availability guards (variant expressions) that reference the given data property.
     *  - any style validations, message tokens or guards that reference the given data property.
     *  - the validity of the property (and the containing entity) if the given data property has a length restriction.
     *  - the validity of the property (and the containing entity) if the given data property is required.
     */

    model_internal function setterListenerQ_XML(value:flash.events.Event):void
    {
        _model.invalidateDependentOnQ_XML();
    }

    model_internal function setterListenerQ_nome(value:flash.events.Event):void
    {
        _model.invalidateDependentOnQ_nome();
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
        if (!_model.Q_XMLIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_Q_XMLValidationFailureMessages);
        }
        if (!_model.Q_nomeIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_Q_nomeValidationFailureMessages);
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
    public function get _model() : _QuestaoEntityEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _QuestaoEntityEntityMetadata) : void
    {
        var oldValue : _QuestaoEntityEntityMetadata = model_internal::_dminternal_model;
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

    model_internal var _doValidationCacheOfQ_XML : Array = null;
    model_internal var _doValidationLastValOfQ_XML : String;

    model_internal function _doValidationForQ_XML(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfQ_XML != null && model_internal::_doValidationLastValOfQ_XML == value)
           return model_internal::_doValidationCacheOfQ_XML ;

        _model.model_internal::_Q_XMLIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isQ_XMLAvailable && _internal_Q_XML == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "Q_XML is required"));
        }

        model_internal::_doValidationCacheOfQ_XML = validationFailures;
        model_internal::_doValidationLastValOfQ_XML = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfQ_nome : Array = null;
    model_internal var _doValidationLastValOfQ_nome : String;

    model_internal function _doValidationForQ_nome(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfQ_nome != null && model_internal::_doValidationLastValOfQ_nome == value)
           return model_internal::_doValidationCacheOfQ_nome ;

        _model.model_internal::_Q_nomeIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isQ_nomeAvailable && _internal_Q_nome == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "Q_nome is required"));
        }

        model_internal::_doValidationCacheOfQ_nome = validationFailures;
        model_internal::_doValidationLastValOfQ_nome = value;

        return validationFailures;
    }
    

}

}
