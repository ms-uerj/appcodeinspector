/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package InspctX.Domain;

import InspectorXWebserv.TipoArtefatoEntity;

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
    
    @Override
    public String toString()
    {
       return this.tanome; 
    }
}
