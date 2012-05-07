package InspctX.Domain;

import InspectorXWebserv.TaxonomiaEntity;


public class Taxonomia extends TaxonomiaEntity 
{
    public TaxonomiaEntity taxEntity;
    
    
    public Taxonomia(TaxonomiaEntity taxonomiaEntity)
    {
        taxEntity=taxonomiaEntity;
        this.nome=taxonomiaEntity.getNome();
	this.id = taxonomiaEntity.getID();
    }
    
    @Override
    public String toString()
    {
       return this.nome; 
    }
}
