/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - ItemTaxonomiaEntity.as.
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
public class _Super_ItemTaxonomiaEntity extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
    }

    model_internal var _dminternal_model : _ItemTaxonomiaEntityEntityMetadata;
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
    private var _internal_ID : int;
    private var _internal_T_ID : int;
    private var _internal_Nome : String;
    private var _internal_Descricao : String;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_ItemTaxonomiaEntity()
    {
        _model = new _ItemTaxonomiaEntityEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "Nome", model_internal::setterListenerNome));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "Descricao", model_internal::setterListenerDescricao));

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get ID() : int
    {
        return _internal_ID;
    }

    [Bindable(event="propertyChange")]
    public function get T_ID() : int
    {
        return _internal_T_ID;
    }

    [Bindable(event="propertyChange")]
    public function get Nome() : String
    {
        return _internal_Nome;
    }

    [Bindable(event="propertyChange")]
    public function get Descricao() : String
    {
        return _internal_Descricao;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set ID(value:int) : void
    {
        var oldValue:int = _internal_ID;
        if (oldValue !== value)
        {
            _internal_ID = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "ID", oldValue, _internal_ID));
        }
    }

    public function set T_ID(value:int) : void
    {
        var oldValue:int = _internal_T_ID;
        if (oldValue !== value)
        {
            _internal_T_ID = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "T_ID", oldValue, _internal_T_ID));
        }
    }

    public function set Nome(value:String) : void
    {
        var oldValue:String = _internal_Nome;
        if (oldValue !== value)
        {
            _internal_Nome = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "Nome", oldValue, _internal_Nome));
        }
    }

    public function set Descricao(value:String) : void
    {
        var oldValue:String = _internal_Descricao;
        if (oldValue !== value)
        {
            _internal_Descricao = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "Descricao", oldValue, _internal_Descricao));
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

    model_internal function setterListenerNome(value:flash.events.Event):void
    {
        _model.invalidateDependentOnNome();
    }

    model_internal function setterListenerDescricao(value:flash.events.Event):void
    {
        _model.invalidateDependentOnDescricao();
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
        if (!_model.NomeIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_NomeValidationFailureMessages);
        }
        if (!_model.DescricaoIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_DescricaoValidationFailureMessages);
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
    public function get _model() : _ItemTaxonomiaEntityEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _ItemTaxonomiaEntityEntityMetadata) : void
    {
        var oldValue : _ItemTaxonomiaEntityEntityMetadata = model_internal::_dminternal_model;
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

    model_internal var _doValidationCacheOfNome : Array = null;
    model_internal var _doValidationLastValOfNome : String;

    model_internal function _doValidationForNome(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfNome != null && model_internal::_doValidationLastValOfNome == value)
           return model_internal::_doValidationCacheOfNome ;

        _model.model_internal::_NomeIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isNomeAvailable && _internal_Nome == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "Nome is required"));
        }

        model_internal::_doValidationCacheOfNome = validationFailures;
        model_internal::_doValidationLastValOfNome = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfDescricao : Array = null;
    model_internal var _doValidationLastValOfDescricao : String;

    model_internal function _doValidationForDescricao(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfDescricao != null && model_internal::_doValidationLastValOfDescricao == value)
           return model_internal::_doValidationCacheOfDescricao ;

        _model.model_internal::_DescricaoIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isDescricaoAvailable && _internal_Descricao == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "Descricao is required"));
        }

        model_internal::_doValidationCacheOfDescricao = validationFailures;
        model_internal::_doValidationLastValOfDescricao = value;

        return validationFailures;
    }
    

}

}
