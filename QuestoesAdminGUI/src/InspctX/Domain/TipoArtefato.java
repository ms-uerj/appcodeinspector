/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package InspctX.Domain;

import InspectorXWebserv.ItemTaxonomiaEntity;
import InspectorXWebserv.TipoArtefatoEntity;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Enuma
 */
public class TipoArtefato extends TipoArtefatoEntity {
    
    public TipoArtefatoEntity tartefoEntity;
    
    public TipoArtefato(TipoArtefatoEntity tipoArtefatoEntity)
    {
        tartefoEntity=tipoArtefatoEntity;
        this.tanome=tipoArtefatoEntity.getTANOME();
	this.taid=tipoArtefatoEntity.getTAID();
	this.tadescricao=tipoArtefatoEntity.getTADESCRICAO();
    }
    
    public static ArrayList<TipoArtefato> toTipoArtefatoList(List<TipoArtefatoEntity> tipoArtefatoEList)
    {
	ArrayList<TipoArtefato> tipoArtefatoList = new ArrayList<>();
		
	for (TipoArtefatoEntity tipoAE : tipoArtefatoEList) {
	    tipoArtefatoList.add(new TipoArtefato(tipoAE));
	}
	return tipoArtefatoList;
    }
    
    @Override
    public String toString()
    {
       return this.tanome; 
    }
}
