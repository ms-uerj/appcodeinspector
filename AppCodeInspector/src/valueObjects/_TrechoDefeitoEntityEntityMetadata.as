
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
internal class _TrechoDefeitoEntityEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("D_ID", "IT_ID", "Explicacao", "Conteudo");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array("D_ID", "IT_ID", "Explicacao", "Conteudo");
    model_internal static var allAlwaysAvailableProperties:Array = new Array("D_ID", "IT_ID", "Explicacao", "Conteudo");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("D_ID", "IT_ID", "Explicacao", "Conteudo");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array();
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "TrechoDefeitoEntity";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();

    
    model_internal var _ExplicacaoIsValid:Boolean;
    model_internal var _ExplicacaoValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _ExplicacaoIsValidCacheInitialized:Boolean = false;
    model_internal var _ExplicacaoValidationFailureMessages:Array;
    
    model_internal var _ConteudoIsValid:Boolean;
    model_internal var _ConteudoValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _ConteudoIsValidCacheInitialized:Boolean = false;
    model_internal var _ConteudoValidationFailureMessages:Array;

    model_internal var _instance:_Super_TrechoDefeitoEntity;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _TrechoDefeitoEntityEntityMetadata(value : _Super_TrechoDefeitoEntity)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // depenents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["D_ID"] = new Array();
            model_internal::dependentsOnMap["IT_ID"] = new Array();
            model_internal::dependentsOnMap["Explicacao"] = new Array();
            model_internal::dependentsOnMap["Conteudo"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object()
        }

        model_internal::_instance = value;
        model_internal::_ExplicacaoValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForExplicacao);
        model_internal::_ExplicacaoValidator.required = true;
        model_internal::_ExplicacaoValidator.requiredFieldError = "Explicacao is required";
        //model_internal::_ExplicacaoValidator.source = model_internal::_instance;
        //model_internal::_ExplicacaoValidator.property = "Explicacao";
        model_internal::_ConteudoValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForConteudo);
        model_internal::_ConteudoValidator.required = true;
        model_internal::_ConteudoValidator.requiredFieldError = "Conteudo is required";
        //model_internal::_ConteudoValidator.source = model_internal::_instance;
        //model_internal::_ConteudoValidator.property = "Conteudo";
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
            throw new Error(propertyName + " is not a data property of entity TrechoDefeitoEntity");  
            
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
            throw new Error(propertyName + " is not a collection property of entity TrechoDefeitoEntity");  

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
            throw new Error(propertyName + " does not exist for entity TrechoDefeitoEntity");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::dataProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a data property of entity TrechoDefeitoEntity");
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
            throw new Error(propertyName + " does not exist for entity TrechoDefeitoEntity");
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
    public function get isD_IDAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isIT_IDAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isExplicacaoAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isConteudoAvailable():Boolean
    {
        return true;
    }


    /**
     * derived property recalculation
     */
    public function invalidateDependentOnExplicacao():void
    {
        if (model_internal::_ExplicacaoIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfExplicacao = null;
            model_internal::calculateExplicacaoIsValid();
        }
    }
    public function invalidateDependentOnConteudo():void
    {
        if (model_internal::_ConteudoIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfConteudo = null;
            model_internal::calculateConteudoIsValid();
        }
    }

    model_internal function fireChangeEvent(propertyName:String, oldValue:Object, newValue:Object):void
    {
        this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, propertyName, oldValue, newValue));
    }

    [Bindable(event="propertyChange")]   
    public function get D_IDStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get IT_IDStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get ExplicacaoStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get ExplicacaoValidator() : StyleValidator
    {
        return model_internal::_ExplicacaoValidator;
    }

    model_internal function set _ExplicacaoIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_ExplicacaoIsValid;         
        if (oldValue !== value)
        {
            model_internal::_ExplicacaoIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "ExplicacaoIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get ExplicacaoIsValid():Boolean
    {
        if (!model_internal::_ExplicacaoIsValidCacheInitialized)
        {
            model_internal::calculateExplicacaoIsValid();
        }

        return model_internal::_ExplicacaoIsValid;
    }

    model_internal function calculateExplicacaoIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_ExplicacaoValidator.validate(model_internal::_instance.Explicacao)
        model_internal::_ExplicacaoIsValid_der = (valRes.results == null);
        model_internal::_ExplicacaoIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::ExplicacaoValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::ExplicacaoValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get ExplicacaoValidationFailureMessages():Array
    {
        if (model_internal::_ExplicacaoValidationFailureMessages == null)
            model_internal::calculateExplicacaoIsValid();

        return _ExplicacaoValidationFailureMessages;
    }

    model_internal function set ExplicacaoValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_ExplicacaoValidationFailureMessages;

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
            model_internal::_ExplicacaoValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "ExplicacaoValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get ConteudoStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get ConteudoValidator() : StyleValidator
    {
        return model_internal::_ConteudoValidator;
    }

    model_internal function set _ConteudoIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_ConteudoIsValid;         
        if (oldValue !== value)
        {
            model_internal::_ConteudoIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "ConteudoIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get ConteudoIsValid():Boolean
    {
        if (!model_internal::_ConteudoIsValidCacheInitialized)
        {
            model_internal::calculateConteudoIsValid();
        }

        return model_internal::_ConteudoIsValid;
    }

    model_internal function calculateConteudoIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_ConteudoValidator.validate(model_internal::_instance.Conteudo)
        model_internal::_ConteudoIsValid_der = (valRes.results == null);
        model_internal::_ConteudoIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::ConteudoValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::ConteudoValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get ConteudoValidationFailureMessages():Array
    {
        if (model_internal::_ConteudoValidationFailureMessages == null)
            model_internal::calculateConteudoIsValid();

        return _ConteudoValidationFailureMessages;
    }

    model_internal function set ConteudoValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_ConteudoValidationFailureMessages;

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
            model_internal::_ConteudoValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "ConteudoValidationFailureMessages", oldValue, value));
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
            case("Explicacao"):
            {
                return ExplicacaoValidationFailureMessages;
            }
            case("Conteudo"):
            {
                return ConteudoValidationFailureMessages;
            }
            default:
            {
                return emptyArray;
            }
         }
     }

}

}
