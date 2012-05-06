package InspctX.Domain;

import InspctX.Componentes.IInspectorXEntities;
import InspectorXWebserv.QuestaoEntity;


public class Questao extends QuestaoEntity implements IInspectorXEntities{
    
    public QuestaoEntity qEntity;
    
    public Questao(QuestaoEntity questaoEntity)
    {
        qEntity=questaoEntity;
        this.qid=questaoEntity.getQID();
        this.qNivelDificuldade=questaoEntity.getQNivelDificuldade();
        this.qxml=questaoEntity.getQXML();
    }
    
    @Override
    public String toString()
    {
       return "Questão "+this.qid+" nível:"+this.qNivelDificuldade; 
    }
    @Override
    public String getContent()
    {
       return this.qxml; 
    }
}
