using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Database.DAO;

namespace Database.Facade
{
    public class QuestaoFacade
    {

        public string GetQuestoes(int NivelDificuldade)
        {
            var fullQuestoesXML = new StringBuilder();

            QuestoesDAO questoes = new QuestoesDAO();

            foreach (Questao questao in questoes.GetQuestoes(NivelDificuldade))
            {
                fullQuestoesXML.Append(questao.ToString());
            }

            return fullQuestoesXML.ToString();
        }

    }
}
