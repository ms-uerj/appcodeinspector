using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CIDao.DAO;

namespace CIFacade.Facade
{
    public class QuestaoFacade
    {
        public string GetQuestoes(int NivelDificuldade)
        {
            var fullQuestoesXML = new StringBuilder();

            QuestaoDAO questoes = new QuestaoDAO();
            

            //foreach (QuestaoDAO questao in questoes.GetQuestoes(NivelDificuldade))
            //{
            //    fullQuestoesXML.Append(questao.ToString());
            //}

            return fullQuestoesXML.ToString();
        }
    }
}
