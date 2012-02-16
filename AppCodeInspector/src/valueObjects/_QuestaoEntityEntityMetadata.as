
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
internal class _QuestaoEntityEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("Q_ID", "Q_Nivel_Dificuldade", "Q_XML", "Q_TEMPO", "Q_nome");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array("Q_ID", "Q_Nivel_Dificuldade", "Q_XML", "Q_TEMPO", "Q_nome");
    model_internal static var allAlwaysAvailableProperties:Array = new Array("Q_ID", "Q_Nivel_Dificuldade", "Q_XML", "Q_TEMPO", "Q_nome");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("Q_ID", "Q_Nivel_Dificuldade", "Q_XML", "Q_TEMPO", "Q_nome");
    model_internal static var sourceProperties:Array = emptyArray
    model_internal static var nonDerivedProperties:Array = new Array("Q_ID", "Q_Nivel_Dificuldade", "Q_XML", "Q_TEMPO", "Q_nome");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array();
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "QuestaoEntity";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();
    model_internal static var propertyTypeMap:Object;

    
    model_internal var _Q_XMLIsValid:Boolean;
    model_internal var _Q_XMLValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _Q_XMLIsValidCacheInitialized:Boolean = false;
    model_internal var _Q_XMLValidationFailureMessages:Array;
    
    model_internal var _Q_nomeIsValid:Boolean;
    model_internal var _Q_nomeValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _Q_nomeIsValidCacheInitialized:Boolean = false;
    model_internal var _Q_nomeValidationFailureMessages:Array;

    model_internal var _instance:_Super_QuestaoEntity;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _QuestaoEntityEntityMetadata(value : _Super_QuestaoEntity)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // dependents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["Q_ID"] = new Array();
            model_internal::dependentsOnMap["Q_Nivel_Dificuldade"] = new Array();
            model_internal::dependentsOnMap["Q_XML"] = new Array();
            model_internal::dependentsOnMap["Q_TEMPO"] = new Array();
            model_internal::dependentsOnMap["Q_nome"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object();
        }

        // Property type Map
        model_internal::propertyTypeMap = new Object();
        model_internal::propertyTypeMap["Q_ID"] = "int";
        model_internal::propertyTypeMap["Q_Nivel_Dificuldade"] = "int";
        model_internal::propertyTypeMap["Q_XML"] = "String";
        model_internal::propertyTypeMap["Q_TEMPO"] = "int";
        model_internal::propertyTypeMap["Q_nome"] = "String";

        model_internal::_instance = value;
        model_internal::_Q_XMLValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForQ_XML);
        model_internal::_Q_XMLValidator.required = true;
        model_internal::_Q_XMLValidator.requiredFieldError = "Q_XML is required";
        //model_internal::_Q_XMLValidator.source = model_internal::_instance;
        //model_internal::_Q_XMLValidator.property = "Q_XML";
        model_internal::_Q_nomeValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForQ_nome);
        model_internal::_Q_nomeValidator.required = true;
        model_internal::_Q_nomeValidator.requiredFieldError = "Q_nome is required";
        //model_internal::_Q_nomeValidator.source = model_internal::_instance;
        //model_internal::_Q_nomeValidator.property = "Q_nome";
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

    public function getSourceProperties():Array
    {
        return model_internal::sourceProperties;
    }

    public function getNonDerivedProperties():Array
    {
        return model_internal::nonDerivedProperties;
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
       if (model_internal::nonDerivedProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a data property of entity QuestaoEntity");
            
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
            throw new Error(propertyName + " is not a collection property of entity QuestaoEntity");

        return model_internal::collectionBaseMap[propertyName];
    }
    
    override public function getPropertyType(propertyName:String):String
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a property of QuestaoEntity");

        return model_internal::propertyTypeMap[propertyName];
    }

    override public function getAvailableProperties():com.adobe.fiber.valueobjects.IPropertyIterator
    {
        return new com.adobe.fiber.valueobjects.AvailablePropertyIterator(this);
    }

    override public function getValue(propertyName:String):*
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " does not exist for entity QuestaoEntity");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::nonDerivedProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a modifiable property of entity QuestaoEntity");
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
            throw new Error(propertyName + " does not exist for entity QuestaoEntity");
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
    public function get isQ_IDAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isQ_Nivel_DificuldadeAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isQ_XMLAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isQ_TEMPOAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isQ_nomeAvailable():Boolean
    {
        return true;
    }


    /**
     * derived property recalculation
     */
    public function invalidateDependentOnQ_XML():void
    {
        if (model_internal::_Q_XMLIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfQ_XML = null;
            model_internal::calculateQ_XMLIsValid();
        }
    }
    public function invalidateDependentOnQ_nome():void
    {
        if (model_internal::_Q_nomeIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfQ_nome = null;
            model_internal::calculateQ_nomeIsValid();
        }
    }

    model_internal function fireChangeEvent(propertyName:String, oldValue:Object, newValue:Object):void
    {
        this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, propertyName, oldValue, newValue));
    }

    [Bindable(event="propertyChange")]   
    public function get Q_IDStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get Q_Nivel_DificuldadeStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get Q_XMLStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get Q_XMLValidator() : StyleValidator
    {
        return model_internal::_Q_XMLValidator;
    }

    model_internal function set _Q_XMLIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_Q_XMLIsValid;         
        if (oldValue !== value)
        {
            model_internal::_Q_XMLIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "Q_XMLIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get Q_XMLIsValid():Boolean
    {
        if (!model_internal::_Q_XMLIsValidCacheInitialized)
        {
            model_internal::calculateQ_XMLIsValid();
        }

        return model_internal::_Q_XMLIsValid;
    }

    model_internal function calculateQ_XMLIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_Q_XMLValidator.validate(model_internal::_instance.Q_XML)
        model_internal::_Q_XMLIsValid_der = (valRes.results == null);
        model_internal::_Q_XMLIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::Q_XMLValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::Q_XMLValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get Q_XMLValidationFailureMessages():Array
    {
        if (model_internal::_Q_XMLValidationFailureMessages == null)
            model_internal::calculateQ_XMLIsValid();

        return _Q_XMLValidationFailureMessages;
    }

    model_internal function set Q_XMLValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_Q_XMLValidationFailureMessages;

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
            model_internal::_Q_XMLValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "Q_XMLValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get Q_TEMPOStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get Q_nomeStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get Q_nomeValidator() : StyleValidator
    {
        return model_internal::_Q_nomeValidator;
    }

    model_internal function set _Q_nomeIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_Q_nomeIsValid;         
        if (oldValue !== value)
        {
            model_internal::_Q_nomeIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "Q_nomeIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get Q_nomeIsValid():Boolean
    {
        if (!model_internal::_Q_nomeIsValidCacheInitialized)
        {
            model_internal::calculateQ_nomeIsValid();
        }

        return model_internal::_Q_nomeIsValid;
    }

    model_internal function calculateQ_nomeIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_Q_nomeValidator.validate(model_internal::_instance.Q_nome)
        model_internal::_Q_nomeIsValid_der = (valRes.results == null);
        model_internal::_Q_nomeIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::Q_nomeValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::Q_nomeValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get Q_nomeValidationFailureMessages():Array
    {
        if (model_internal::_Q_nomeValidationFailureMessages == null)
            model_internal::calculateQ_nomeIsValid();

        return _Q_nomeValidationFailureMessages;
    }

    model_internal function set Q_nomeValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_Q_nomeValidationFailureMessages;

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
            model_internal::_Q_nomeValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "Q_nomeValidationFailureMessages", oldValue, value));
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
            case("Q_XML"):
            {
                return Q_XMLValidationFailureMessages;
            }
            case("Q_nome"):
            {
                return Q_nomeValidationFailureMessages;
            }
            default:
            {
                return emptyArray;
            }
         }
     }

}

}
