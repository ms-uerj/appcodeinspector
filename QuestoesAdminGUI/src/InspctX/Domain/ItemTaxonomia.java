package InspctX.Domain;

import InspectorXWebserv.ItemTaxonomiaEntity;
import java.util.ArrayList;
import java.util.List;


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
    
    public static ArrayList<ItemTaxonomia> toItemTaxList( List<ItemTaxonomiaEntity> itemTaxEList)
    {
	ArrayList<ItemTaxonomia> itemTaxList = new ArrayList<>();
		
	for (ItemTaxonomiaEntity itemTaxonomiaEntity : itemTaxEList) {
	    itemTaxList.add(new ItemTaxonomia(itemTaxonomiaEntity));
	}
	return itemTaxList;
    }
    
    @Override
    public String toString()
    {
       return this.nome; 
    }
}
