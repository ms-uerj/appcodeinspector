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
    }
    
    @Override
    public String toString()
    {
       return this.conteudo; 
    }
}
