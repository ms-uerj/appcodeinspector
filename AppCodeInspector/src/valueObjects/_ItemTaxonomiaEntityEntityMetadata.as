
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
internal class _ItemTaxonomiaEntityEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("ID", "T_ID", "Nome", "Descricao");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array("ID", "T_ID", "Nome", "Descricao");
    model_internal static var allAlwaysAvailableProperties:Array = new Array("ID", "T_ID", "Nome", "Descricao");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("ID", "T_ID", "Nome", "Descricao");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array();
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "ItemTaxonomiaEntity";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();

    
    model_internal var _NomeIsValid:Boolean;
    model_internal var _NomeValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _NomeIsValidCacheInitialized:Boolean = false;
    model_internal var _NomeValidationFailureMessages:Array;
    
    model_internal var _DescricaoIsValid:Boolean;
    model_internal var _DescricaoValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _DescricaoIsValidCacheInitialized:Boolean = false;
    model_internal var _DescricaoValidationFailureMessages:Array;

    model_internal var _instance:_Super_ItemTaxonomiaEntity;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _ItemTaxonomiaEntityEntityMetadata(value : _Super_ItemTaxonomiaEntity)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // depenents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["ID"] = new Array();
            model_internal::dependentsOnMap["T_ID"] = new Array();
            model_internal::dependentsOnMap["Nome"] = new Array();
            model_internal::dependentsOnMap["Descricao"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object()
        }

        model_internal::_instance = value;
        model_internal::_NomeValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForNome);
        model_internal::_NomeValidator.required = true;
        model_internal::_NomeValidator.requiredFieldError = "Nome is required";
        //model_internal::_NomeValidator.source = model_internal::_instance;
        //model_internal::_NomeValidator.property = "Nome";
        model_internal::_DescricaoValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForDescricao);
        model_internal::_DescricaoValidator.required = true;
        model_internal::_DescricaoValidator.requiredFieldError = "Descricao is required";
        //model_internal::_DescricaoValidator.source = model_internal::_instance;
        //model_internal::_DescricaoValidator.property = "Descricao";
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
            throw new Error(propertyName + " is not a data property of entity ItemTaxonomiaEntity");  
            
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
            throw new Error(propertyName + " is not a collection property of entity ItemTaxonomiaEntity");  

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
            throw new Error(propertyName + " does not exist for entity ItemTaxonomiaEntity");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::dataProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a data property of entity ItemTaxonomiaEntity");
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
            throw new Error(propertyName + " does not exist for entity ItemTaxonomiaEntity");
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
    public function get isIDAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isT_IDAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isNomeAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isDescricaoAvailable():Boolean
    {
        return true;
    }


    /**
     * derived property recalculation
     */
    public function invalidateDependentOnNome():void
    {
        if (model_internal::_NomeIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfNome = null;
            model_internal::calculateNomeIsValid();
        }
    }
    public function invalidateDependentOnDescricao():void
    {
        if (model_internal::_DescricaoIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfDescricao = null;
            model_internal::calculateDescricaoIsValid();
        }
    }

    model_internal function fireChangeEvent(propertyName:String, oldValue:Object, newValue:Object):void
    {
        this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, propertyName, oldValue, newValue));
    }

    [Bindable(event="propertyChange")]   
    public function get IDStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get T_IDStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get NomeStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get NomeValidator() : StyleValidator
    {
        return model_internal::_NomeValidator;
    }

    model_internal function set _NomeIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_NomeIsValid;         
        if (oldValue !== value)
        {
            model_internal::_NomeIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "NomeIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get NomeIsValid():Boolean
    {
        if (!model_internal::_NomeIsValidCacheInitialized)
        {
            model_internal::calculateNomeIsValid();
        }

        return model_internal::_NomeIsValid;
    }

    model_internal function calculateNomeIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_NomeValidator.validate(model_internal::_instance.Nome)
        model_internal::_NomeIsValid_der = (valRes.results == null);
        model_internal::_NomeIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::NomeValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::NomeValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get NomeValidationFailureMessages():Array
    {
        if (model_internal::_NomeValidationFailureMessages == null)
            model_internal::calculateNomeIsValid();

        return _NomeValidationFailureMessages;
    }

    model_internal function set NomeValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_NomeValidationFailureMessages;

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
            model_internal::_NomeValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "NomeValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get DescricaoStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get DescricaoValidator() : StyleValidator
    {
        return model_internal::_DescricaoValidator;
    }

    model_internal function set _DescricaoIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_DescricaoIsValid;         
        if (oldValue !== value)
        {
            model_internal::_DescricaoIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "DescricaoIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get DescricaoIsValid():Boolean
    {
        if (!model_internal::_DescricaoIsValidCacheInitialized)
        {
            model_internal::calculateDescricaoIsValid();
        }

        return model_internal::_DescricaoIsValid;
    }

    model_internal function calculateDescricaoIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_DescricaoValidator.validate(model_internal::_instance.Descricao)
        model_internal::_DescricaoIsValid_der = (valRes.results == null);
        model_internal::_DescricaoIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::DescricaoValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::DescricaoValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get DescricaoValidationFailureMessages():Array
    {
        if (model_internal::_DescricaoValidationFailureMessages == null)
            model_internal::calculateDescricaoIsValid();

        return _DescricaoValidationFailureMessages;
    }

    model_internal function set DescricaoValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_DescricaoValidationFailureMessages;

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
            model_internal::_DescricaoValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "DescricaoValidationFailureMessages", oldValue, value));
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
            case("Nome"):
            {
                return NomeValidationFailureMessages;
            }
            case("Descricao"):
            {
                return DescricaoValidationFailureMessages;
            }
            default:
            {
                return emptyArray;
            }
         }
     }

}

}
