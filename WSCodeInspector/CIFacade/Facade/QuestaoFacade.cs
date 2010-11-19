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
        public List<string>  GetQuestoes(int nivelDificuldade)
        {
            var fullQuestoesXML = new StringBuilder();

            QuestaoDAO questoes = new QuestaoDAO();

            //fullQuestoesXML.Append("<?xml version=\'1.0\' encoding=\'utf-8\' ?>");
            //fullQuestoesXML.Append("<data>");
            //foreach (Questao questao in questoes.GetQuestoes(nivelDificuldade))
            //{
            //    fullQuestoesXML.Append("<pergunta erro=\'1\'><![CDATA[");
            //    fullQuestoesXML.Append(questao.Q_XML.ToString());
            //    fullQuestoesXML.Append("]]></pergunta>");
            //}

            //fullQuestoesXML.Append("</data>");

            return questoes.GetQuestoes(nivelDificuldade); //fullQuestoesXML.ToString().Replace("\r", "").Replace("\n", "").Replace("\t", "");
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
