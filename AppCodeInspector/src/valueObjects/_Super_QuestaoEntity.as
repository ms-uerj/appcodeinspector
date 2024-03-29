/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - QuestaoEntity.as.
 */

package valueObjects
{
import com.adobe.fiber.services.IFiberManagingService;
import com.adobe.fiber.valueobjects.IValueObject;
import flash.events.EventDispatcher;
import mx.collections.ArrayCollection;
import mx.events.PropertyChangeEvent;
import valueObjects.ItemTaxonomiaEntity;

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
        valueObjects.ItemTaxonomiaEntity.initRemoteClassAliasSingleChild();
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
    private var _internal_itemTax : valueObjects.ItemTaxonomiaEntity;
    private var _internal_itemTaxList : ArrayCollection;
    model_internal var _internal_itemTaxList_leaf:valueObjects.ItemTaxonomiaEntity;

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

    [Bindable(event="propertyChange")]
    public function get itemTax() : valueObjects.ItemTaxonomiaEntity
    {
        return _internal_itemTax;
    }

    [Bindable(event="propertyChange")]
    public function get itemTaxList() : ArrayCollection
    {
        return _internal_itemTaxList;
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

    public function set itemTax(value:valueObjects.ItemTaxonomiaEntity) : void
    {
        var oldValue:valueObjects.ItemTaxonomiaEntity = _internal_itemTax;
        if (oldValue !== value)
        {
            _internal_itemTax = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "itemTax", oldValue, _internal_itemTax));
        }
    }

    public function set itemTaxList(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_itemTaxList;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_itemTaxList = value;
            }
            else if (value is Array)
            {
                _internal_itemTaxList = new ArrayCollection(value);
            }
            else if (value == null)
            {
                _internal_itemTaxList = null;
            }
            else
            {
                throw new Error("value of itemTaxList must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "itemTaxList", oldValue, _internal_itemTaxList));
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


}

}
