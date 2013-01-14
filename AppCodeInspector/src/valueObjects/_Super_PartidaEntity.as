/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - PartidaEntity.as.
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
public class _Super_PartidaEntity extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
    }

    model_internal var _dminternal_model : _PartidaEntityEntityMetadata;
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
    private var _internal_P_ID : int;
    private var _internal_U_ID : int;
    private var _internal_P_DATA : Date;
    private var _internal_P_NIVEL_DIFICULDADE : int;
    private var _internal_P_PONTUACAO_TOTAL : int;
    private var _internal_P_JOGO_MODO : String;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_PartidaEntity()
    {
        _model = new _PartidaEntityEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get P_ID() : int
    {
        return _internal_P_ID;
    }

    [Bindable(event="propertyChange")]
    public function get U_ID() : int
    {
        return _internal_U_ID;
    }

    [Bindable(event="propertyChange")]
    public function get P_DATA() : Date
    {
        return _internal_P_DATA;
    }

    [Bindable(event="propertyChange")]
    public function get P_NIVEL_DIFICULDADE() : int
    {
        return _internal_P_NIVEL_DIFICULDADE;
    }

    [Bindable(event="propertyChange")]
    public function get P_PONTUACAO_TOTAL() : int
    {
        return _internal_P_PONTUACAO_TOTAL;
    }

    [Bindable(event="propertyChange")]
    public function get P_JOGO_MODO() : String
    {
        return _internal_P_JOGO_MODO;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set P_ID(value:int) : void
    {
        var oldValue:int = _internal_P_ID;
        if (oldValue !== value)
        {
            _internal_P_ID = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "P_ID", oldValue, _internal_P_ID));
        }
    }

    public function set U_ID(value:int) : void
    {
        var oldValue:int = _internal_U_ID;
        if (oldValue !== value)
        {
            _internal_U_ID = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "U_ID", oldValue, _internal_U_ID));
        }
    }

    public function set P_DATA(value:Date) : void
    {
        var oldValue:Date = _internal_P_DATA;
        if (oldValue !== value)
        {
            _internal_P_DATA = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "P_DATA", oldValue, _internal_P_DATA));
        }
    }

    public function set P_NIVEL_DIFICULDADE(value:int) : void
    {
        var oldValue:int = _internal_P_NIVEL_DIFICULDADE;
        if (oldValue !== value)
        {
            _internal_P_NIVEL_DIFICULDADE = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "P_NIVEL_DIFICULDADE", oldValue, _internal_P_NIVEL_DIFICULDADE));
        }
    }

    public function set P_PONTUACAO_TOTAL(value:int) : void
    {
        var oldValue:int = _internal_P_PONTUACAO_TOTAL;
        if (oldValue !== value)
        {
            _internal_P_PONTUACAO_TOTAL = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "P_PONTUACAO_TOTAL", oldValue, _internal_P_PONTUACAO_TOTAL));
        }
    }

    public function set P_JOGO_MODO(value:String) : void
    {
        var oldValue:String = _internal_P_JOGO_MODO;
        if (oldValue !== value)
        {
            _internal_P_JOGO_MODO = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "P_JOGO_MODO", oldValue, _internal_P_JOGO_MODO));
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
    public function get _model() : _PartidaEntityEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _PartidaEntityEntityMetadata) : void
    {
        var oldValue : _PartidaEntityEntityMetadata = model_internal::_dminternal_model;
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
