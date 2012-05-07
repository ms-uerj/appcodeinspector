/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package InspctX.Domain;

import InspectorXWebserv.TrechoDefeitoEntity;

/**
 *
 * @author Enuma
 */
public class TrechoDefeito extends TrechoDefeitoEntity
{
    
    public TrechoDefeitoEntity trechodefEntity;
    
    public TrechoDefeito(TrechoDefeitoEntity trechoDefeitoEntity)
    {
        trechodefEntity=trechoDefeitoEntity;
        this.conteudo=trechoDefeitoEntity.getConteudo();
	this.did=trechoDefeitoEntity.getDID();
	this.explicacao=trechoDefeitoEntity.getExplicacao();
	this.itid=trechoDefeitoEntity.getITID();
    }
    
    @Override
    public String toString()
    {
       return this.conteudo; 
    }
}
