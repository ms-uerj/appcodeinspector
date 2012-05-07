package InspctX.Domain;

import InspectorXWebserv.ItemTaxonomiaEntity;


public class ItemTaxonomia extends ItemTaxonomiaEntity{
    
    public ItemTaxonomiaEntity itemTax;
    
    public ItemTaxonomia(ItemTaxonomiaEntity itemTaxonomiaEntity)
    {
        itemTax=itemTaxonomiaEntity;
        this.nome=itemTaxonomiaEntity.getNome();
	this.descricao=itemTaxonomiaEntity.getDescricao();
	this.id=itemTaxonomiaEntity.getID();
	this.tid=itemTaxonomiaEntity.getTID();
    }
    
    @Override
    public String toString()
    {
       return this.nome; 
    }
}
