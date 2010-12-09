using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using CIDao.DAO;
using CIDao;


namespace CIFacade.Facade
{
    public class QuestaoFacade
    {
        public List<string>  GetQuestoes(int nivelDificuldade)
        {
            QuestaoDAO questoes = new QuestaoDAO();

            return questoes.GetQuestoes(nivelDificuldade); //fullQuestoesXML.ToString().Replace("\r", "").Replace("\n", "").Replace("\t", "");
        }


        public List<Questao> GetQuestoesList(int nivelDificuldade)
        {
            QuestaoDAO questoes = new QuestaoDAO();

            return questoes.GetQuestoesList(nivelDificuldade); //fullQuestoesXML.ToString().Replace("\r", "").Replace("\n", "").Replace("\t", "");
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
