/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - UsuarioEntity.as.
 */

package valueObjects
{
import com.adobe.fiber.services.IFiberManagingService;
import com.adobe.fiber.valueobjects.IValueObject;
import flash.events.EventDispatcher;
import mx.collections.ArrayCollection;
import mx.events.PropertyChangeEvent;

import flash.net.registerClassAlias;
import flash.net.getClassByAlias;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;

use namespace model_internal;

[ExcludeClass]
public class _Super_UsuarioEntity extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
    }

    model_internal var _dminternal_model : _UsuarioEntityEntityMetadata;
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
    private var _internal_U_ID : int;
    private var _internal_U_NOME : String;
    private var _internal_U_EMAIL : String;
    private var _internal_U_SENHA : String;
    private var _internal_U_LOGIN : String;
    private var _internal_U_TIPO : String;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_UsuarioEntity()
    {
        _model = new _UsuarioEntityEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get U_ID() : int
    {
        return _internal_U_ID;
    }

    [Bindable(event="propertyChange")]
    public function get U_NOME() : String
    {
        return _internal_U_NOME;
    }

    [Bindable(event="propertyChange")]
    public function get U_EMAIL() : String
    {
        return _internal_U_EMAIL;
    }

    [Bindable(event="propertyChange")]
    public function get U_SENHA() : String
    {
        return _internal_U_SENHA;
    }

    [Bindable(event="propertyChange")]
    public function get U_LOGIN() : String
    {
        return _internal_U_LOGIN;
    }

    [Bindable(event="propertyChange")]
    public function get U_TIPO() : String
    {
        return _internal_U_TIPO;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set U_ID(value:int) : void
    {
        var oldValue:int = _internal_U_ID;
        if (oldValue !== value)
        {
            _internal_U_ID = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "U_ID", oldValue, _internal_U_ID));
        }
    }

    public function set U_NOME(value:String) : void
    {
        var oldValue:String = _internal_U_NOME;
        if (oldValue !== value)
        {
            _internal_U_NOME = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "U_NOME", oldValue, _internal_U_NOME));
        }
    }

    public function set U_EMAIL(value:String) : void
    {
        var oldValue:String = _internal_U_EMAIL;
        if (oldValue !== value)
        {
            _internal_U_EMAIL = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "U_EMAIL", oldValue, _internal_U_EMAIL));
        }
    }

    public function set U_SENHA(value:String) : void
    {
        var oldValue:String = _internal_U_SENHA;
        if (oldValue !== value)
        {
            _internal_U_SENHA = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "U_SENHA", oldValue, _internal_U_SENHA));
        }
    }

    public function set U_LOGIN(value:String) : void
    {
        var oldValue:String = _internal_U_LOGIN;
        if (oldValue !== value)
        {
            _internal_U_LOGIN = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "U_LOGIN", oldValue, _internal_U_LOGIN));
        }
    }

    public function set U_TIPO(value:String) : void
    {
        var oldValue:String = _internal_U_TIPO;
        if (oldValue !== value)
        {
            _internal_U_TIPO = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "U_TIPO", oldValue, _internal_U_TIPO));
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
    public function get _model() : _UsuarioEntityEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _UsuarioEntityEntityMetadata) : void
    {
        var oldValue : _UsuarioEntityEntityMetadata = model_internal::_dminternal_model;
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


}

}
