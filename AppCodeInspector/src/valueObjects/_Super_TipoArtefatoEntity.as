/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - TipoArtefatoEntity.as.
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
public class _Super_TipoArtefatoEntity extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
    }

    model_internal var _dminternal_model : _TipoArtefatoEntityEntityMetadata;
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
    private var _internal_TA_ID : int;
    private var _internal_TA_DESCRICAO : String;
    private var _internal_TA_NOME : String;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_TipoArtefatoEntity()
    {
        _model = new _TipoArtefatoEntityEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "TA_DESCRICAO", model_internal::setterListenerTA_DESCRICAO));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "TA_NOME", model_internal::setterListenerTA_NOME));

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get TA_ID() : int
    {
        return _internal_TA_ID;
    }

    [Bindable(event="propertyChange")]
    public function get TA_DESCRICAO() : String
    {
        return _internal_TA_DESCRICAO;
    }

    [Bindable(event="propertyChange")]
    public function get TA_NOME() : String
    {
        return _internal_TA_NOME;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set TA_ID(value:int) : void
    {
        var oldValue:int = _internal_TA_ID;
        if (oldValue !== value)
        {
            _internal_TA_ID = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "TA_ID", oldValue, _internal_TA_ID));
        }
    }

    public function set TA_DESCRICAO(value:String) : void
    {
        var oldValue:String = _internal_TA_DESCRICAO;
        if (oldValue !== value)
        {
            _internal_TA_DESCRICAO = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "TA_DESCRICAO", oldValue, _internal_TA_DESCRICAO));
        }
    }

    public function set TA_NOME(value:String) : void
    {
        var oldValue:String = _internal_TA_NOME;
        if (oldValue !== value)
        {
            _internal_TA_NOME = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "TA_NOME", oldValue, _internal_TA_NOME));
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

    model_internal function setterListenerTA_DESCRICAO(value:flash.events.Event):void
    {
        _model.invalidateDependentOnTA_DESCRICAO();
    }

    model_internal function setterListenerTA_NOME(value:flash.events.Event):void
    {
        _model.invalidateDependentOnTA_NOME();
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
        if (!_model.TA_DESCRICAOIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_TA_DESCRICAOValidationFailureMessages);
        }
        if (!_model.TA_NOMEIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_TA_NOMEValidationFailureMessages);
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
    public function get _model() : _TipoArtefatoEntityEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _TipoArtefatoEntityEntityMetadata) : void
    {
        var oldValue : _TipoArtefatoEntityEntityMetadata = model_internal::_dminternal_model;
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

    model_internal var _doValidationCacheOfTA_DESCRICAO : Array = null;
    model_internal var _doValidationLastValOfTA_DESCRICAO : String;

    model_internal function _doValidationForTA_DESCRICAO(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfTA_DESCRICAO != null && model_internal::_doValidationLastValOfTA_DESCRICAO == value)
           return model_internal::_doValidationCacheOfTA_DESCRICAO ;

        _model.model_internal::_TA_DESCRICAOIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isTA_DESCRICAOAvailable && _internal_TA_DESCRICAO == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "TA_DESCRICAO is required"));
        }

        model_internal::_doValidationCacheOfTA_DESCRICAO = validationFailures;
        model_internal::_doValidationLastValOfTA_DESCRICAO = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfTA_NOME : Array = null;
    model_internal var _doValidationLastValOfTA_NOME : String;

    model_internal function _doValidationForTA_NOME(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfTA_NOME != null && model_internal::_doValidationLastValOfTA_NOME == value)
           return model_internal::_doValidationCacheOfTA_NOME ;

        _model.model_internal::_TA_NOMEIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isTA_NOMEAvailable && _internal_TA_NOME == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "TA_NOME is required"));
        }

        model_internal::_doValidationCacheOfTA_NOME = validationFailures;
        model_internal::_doValidationLastValOfTA_NOME = value;

        return validationFailures;
    }
    

}

}
