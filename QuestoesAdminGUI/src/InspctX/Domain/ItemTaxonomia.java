package InspctX.Domain;

import InspectorXWebserv.ItemTaxonomiaEntity;


public class ItemTaxonomia extends ItemTaxonomiaEntity{
    
    public ItemTaxonomiaEntity itemTax;
    
    public ItemTaxonomia(ItemTaxonomiaEntity itemTaxonomiaEntity)
    {
        itemTax=itemTaxonomiaEntity;
        this.nome=itemTaxonomiaEntity.getNome();
    }
    
    @Override
    public String toString()
    {
       return this.nome; 
    }
}
