using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CIDao.DAO;
using CIDao;
using System.Data;

namespace CIFacade.Facade
{
    public class QuestaoFacade
    {
        public DataTable GetQuestoes(int nivelDificuldade)
        {
            //var fullQuestoesXML = new StringBuilder();

            QuestaoDAO questoes = new QuestaoDAO();
            

            //foreach (QuestaoDAO questao in questoes.GetQuestoes(NivelDificuldade))
            //{
            //    fullQuestoesXML.Append(questao.ToString());
            //}

            return questoes.GetQuestoes(nivelDificuldade);
        }

        public void AdicionarQuestao(int nivelDificuladade, string xmlQuestao, int? tempo)
        {

            Questao novaQuestao = new Questao();

            novaQuestao.Q_NIVEL_DIFICULDADE= nivelDificuladade;
            novaQuestao.Q_XML = xmlQuestao;
            novaQuestao.Q_TEMPO = tempo;

            new QuestaoDAO().AdicionarQuestao(novaQuestao);

        }
    }
}
