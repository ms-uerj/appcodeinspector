
/**
 * This is a generated class and is not intended for modification.  
 */
package valueObjects
{
import com.adobe.fiber.styles.IStyle;
import com.adobe.fiber.styles.Style;
import com.adobe.fiber.styles.StyleValidator;
import com.adobe.fiber.valueobjects.AbstractEntityMetadata;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import mx.events.ValidationResultEvent;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IModelType;
import mx.events.PropertyChangeEvent;

use namespace model_internal;

[ExcludeClass]
internal class _TipoArtefatoEntityEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("TA_ID", "TA_DESCRICAO", "TA_NOME");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array("TA_ID", "TA_DESCRICAO", "TA_NOME");
    model_internal static var allAlwaysAvailableProperties:Array = new Array("TA_ID", "TA_DESCRICAO", "TA_NOME");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("TA_ID", "TA_DESCRICAO", "TA_NOME");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array();
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "TipoArtefatoEntity";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();

    
    model_internal var _TA_DESCRICAOIsValid:Boolean;
    model_internal var _TA_DESCRICAOValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _TA_DESCRICAOIsValidCacheInitialized:Boolean = false;
    model_internal var _TA_DESCRICAOValidationFailureMessages:Array;
    
    model_internal var _TA_NOMEIsValid:Boolean;
    model_internal var _TA_NOMEValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _TA_NOMEIsValidCacheInitialized:Boolean = false;
    model_internal var _TA_NOMEValidationFailureMessages:Array;

    model_internal var _instance:_Super_TipoArtefatoEntity;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _TipoArtefatoEntityEntityMetadata(value : _Super_TipoArtefatoEntity)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // depenents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["TA_ID"] = new Array();
            model_internal::dependentsOnMap["TA_DESCRICAO"] = new Array();
            model_internal::dependentsOnMap["TA_NOME"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object()
        }

        model_internal::_instance = value;
        model_internal::_TA_DESCRICAOValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForTA_DESCRICAO);
        model_internal::_TA_DESCRICAOValidator.required = true;
        model_internal::_TA_DESCRICAOValidator.requiredFieldError = "TA_DESCRICAO is required";
        //model_internal::_TA_DESCRICAOValidator.source = model_internal::_instance;
        //model_internal::_TA_DESCRICAOValidator.property = "TA_DESCRICAO";
        model_internal::_TA_NOMEValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForTA_NOME);
        model_internal::_TA_NOMEValidator.required = true;
        model_internal::_TA_NOMEValidator.requiredFieldError = "TA_NOME is required";
        //model_internal::_TA_NOMEValidator.source = model_internal::_instance;
        //model_internal::_TA_NOMEValidator.property = "TA_NOME";
    }

    override public function getEntityName():String
    {
        return model_internal::entityName;
    }

    override public function getProperties():Array
    {
        return model_internal::allProperties;
    }

    override public function getAssociationProperties():Array
    {
        return model_internal::allAssociationProperties;
    }

    override public function getRequiredProperties():Array
    {
         return model_internal::allRequiredProperties;   
    }

    override public function getDataProperties():Array
    {
        return model_internal::dataProperties;
    }

    override public function getGuardedProperties():Array
    {
        return model_internal::guardedProperties;
    }

    override public function getUnguardedProperties():Array
    {
        return model_internal::allAlwaysAvailableProperties;
    }

    override public function getDependants(propertyName:String):Array
    {
       if (model_internal::dataProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a data property of entity TipoArtefatoEntity");  
            
       return model_internal::dependentsOnMap[propertyName] as Array;  
    }

    override public function getDependedOnServices():Array
    {
        return model_internal::dependedOnServices;
    }

    override public function getCollectionProperties():Array
    {
        return model_internal::collectionProperties;
    }

    override public function getCollectionBase(propertyName:String):String
    {
        if (model_internal::collectionProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a collection property of entity TipoArtefatoEntity");  

        return model_internal::collectionBaseMap[propertyName];
    }

    override public function getAvailableProperties():com.adobe.fiber.valueobjects.IPropertyIterator
    {
        return new com.adobe.fiber.valueobjects.AvailablePropertyIterator(this);
    }

    override public function getValue(propertyName:String):*
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " does not exist for entity TipoArtefatoEntity");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::dataProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a data property of entity TipoArtefatoEntity");
        }

        model_internal::_instance[propertyName] = value;
    }

    override public function getMappedByProperty(associationProperty:String):String
    {
        switch(associationProperty)
        {
            default:
            {
                return null;
            }
        }
    }

    override public function getPropertyLength(propertyName:String):int
    {
        switch(propertyName)
        {
            default:
            {
                return 0;
            }
        }
    }

    override public function isAvailable(propertyName:String):Boolean
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " does not exist for entity TipoArtefatoEntity");
        }

        if (model_internal::allAlwaysAvailableProperties.indexOf(propertyName) != -1)
        {
            return true;
        }

        switch(propertyName)
        {
            default:
            {
                return true;
            }
        }
    }

    override public function getIdentityMap():Object
    {
        var returnMap:Object = new Object();

        return returnMap;
    }

    [Bindable(event="propertyChange")]
    override public function get invalidConstraints():Array
    {
        if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
        {
            return model_internal::_instance.model_internal::_invalidConstraints;
        }
        else
        {
            // recalculate isValid
            model_internal::_instance.model_internal::_isValid = model_internal::_instance.model_internal::calculateIsValid();
            return model_internal::_instance.model_internal::_invalidConstraints;        
        }
    }

    [Bindable(event="propertyChange")]
    override public function get validationFailureMessages():Array
    {
        if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
        {
            return model_internal::_instance.model_internal::_validationFailureMessages;
        }
        else
        {
            // recalculate isValid
            model_internal::_instance.model_internal::_isValid = model_internal::_instance.model_internal::calculateIsValid();
            return model_internal::_instance.model_internal::_validationFailureMessages;
        }
    }

    override public function getDependantInvalidConstraints(propertyName:String):Array
    {
        var dependants:Array = getDependants(propertyName);
        if (dependants.length == 0)
        {
            return emptyArray;
        }

        var currentlyInvalid:Array = invalidConstraints;
        if (currentlyInvalid.length == 0)
        {
            return emptyArray;
        }

        var filterFunc:Function = function(element:*, index:int, arr:Array):Boolean
        {
            return dependants.indexOf(element) > -1;
        }

        return currentlyInvalid.filter(filterFunc);
    }

    /**
     * isValid
     */
    [Bindable(event="propertyChange")] 
    public function get isValid() : Boolean
    {
        if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
        {
            return model_internal::_instance.model_internal::_isValid;
        }
        else
        {
            // recalculate isValid
            model_internal::_instance.model_internal::_isValid = model_internal::_instance.model_internal::calculateIsValid();
            return model_internal::_instance.model_internal::_isValid;
        }
    }

    [Bindable(event="propertyChange")]
    public function get isTA_IDAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isTA_DESCRICAOAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isTA_NOMEAvailable():Boolean
    {
        return true;
    }


    /**
     * derived property recalculation
     */
    public function invalidateDependentOnTA_DESCRICAO():void
    {
        if (model_internal::_TA_DESCRICAOIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfTA_DESCRICAO = null;
            model_internal::calculateTA_DESCRICAOIsValid();
        }
    }
    public function invalidateDependentOnTA_NOME():void
    {
        if (model_internal::_TA_NOMEIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfTA_NOME = null;
            model_internal::calculateTA_NOMEIsValid();
        }
    }

    model_internal function fireChangeEvent(propertyName:String, oldValue:Object, newValue:Object):void
    {
        this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, propertyName, oldValue, newValue));
    }

    [Bindable(event="propertyChange")]   
    public function get TA_IDStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get TA_DESCRICAOStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get TA_DESCRICAOValidator() : StyleValidator
    {
        return model_internal::_TA_DESCRICAOValidator;
    }

    model_internal function set _TA_DESCRICAOIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_TA_DESCRICAOIsValid;         
        if (oldValue !== value)
        {
            model_internal::_TA_DESCRICAOIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "TA_DESCRICAOIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get TA_DESCRICAOIsValid():Boolean
    {
        if (!model_internal::_TA_DESCRICAOIsValidCacheInitialized)
        {
            model_internal::calculateTA_DESCRICAOIsValid();
        }

        return model_internal::_TA_DESCRICAOIsValid;
    }

    model_internal function calculateTA_DESCRICAOIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_TA_DESCRICAOValidator.validate(model_internal::_instance.TA_DESCRICAO)
        model_internal::_TA_DESCRICAOIsValid_der = (valRes.results == null);
        model_internal::_TA_DESCRICAOIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::TA_DESCRICAOValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::TA_DESCRICAOValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get TA_DESCRICAOValidationFailureMessages():Array
    {
        if (model_internal::_TA_DESCRICAOValidationFailureMessages == null)
            model_internal::calculateTA_DESCRICAOIsValid();

        return _TA_DESCRICAOValidationFailureMessages;
    }

    model_internal function set TA_DESCRICAOValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_TA_DESCRICAOValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_TA_DESCRICAOValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "TA_DESCRICAOValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get TA_NOMEStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get TA_NOMEValidator() : StyleValidator
    {
        return model_internal::_TA_NOMEValidator;
    }

    model_internal function set _TA_NOMEIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_TA_NOMEIsValid;         
        if (oldValue !== value)
        {
            model_internal::_TA_NOMEIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "TA_NOMEIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get TA_NOMEIsValid():Boolean
    {
        if (!model_internal::_TA_NOMEIsValidCacheInitialized)
        {
            model_internal::calculateTA_NOMEIsValid();
        }

        return model_internal::_TA_NOMEIsValid;
    }

    model_internal function calculateTA_NOMEIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_TA_NOMEValidator.validate(model_internal::_instance.TA_NOME)
        model_internal::_TA_NOMEIsValid_der = (valRes.results == null);
        model_internal::_TA_NOMEIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::TA_NOMEValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::TA_NOMEValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get TA_NOMEValidationFailureMessages():Array
    {
        if (model_internal::_TA_NOMEValidationFailureMessages == null)
            model_internal::calculateTA_NOMEIsValid();

        return _TA_NOMEValidationFailureMessages;
    }

    model_internal function set TA_NOMEValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_TA_NOMEValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_TA_NOMEValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "TA_NOMEValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }


     /**
     * 
     * @inheritDoc 
     */ 
     override public function getStyle(propertyName:String):com.adobe.fiber.styles.IStyle
     {
         switch(propertyName)
         {
            default:
            {
                return null;
            }
         }
     }
     
     /**
     * 
     * @inheritDoc 
     *  
     */  
     override public function getPropertyValidationFailureMessages(propertyName:String):Array
     {
         switch(propertyName)
         {
            case("TA_DESCRICAO"):
            {
                return TA_DESCRICAOValidationFailureMessages;
            }
            case("TA_NOME"):
            {
                return TA_NOMEValidationFailureMessages;
            }
            default:
            {
                return emptyArray;
            }
         }
     }

}

}
