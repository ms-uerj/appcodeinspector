using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using CIDao.DAO;
using CIDao;
using CIDao.Domain;


namespace CIFacade.Facade
{
    public class QuestaoFacade
    {
        public List<QuestaoEntity>  GetQuestoes(int nivelDificuldade)
        {
            QuestaoDAO questoes = new QuestaoDAO();

            return questoes.GetQuestoes(nivelDificuldade);
            //fullQuestoesXML.ToString().Replace("\r", "").Replace("\n", "").Replace("\t", "");
        }

        public List<QuestaoEntity> GetQuestoes(int nivelDificuldade, int taxonomia_id)
        {
            QuestaoDAO questoes = new QuestaoDAO();

            return questoes.GetQuestoes(nivelDificuldade,taxonomia_id);
        }

        public List<int?> GetQuestoesRespostas(int nivelDificuldade)
        {
            QuestaoDAO questoes = new QuestaoDAO();

            return questoes.GetQuestoesRespostas(nivelDificuldade);
        }

        public bool setQuestaoAcerto(int questao_id, int partidada_id, int pontos)
        {
            return new QuestaoDAO().setQuestaoAcerto(questao_id, partidada_id, pontos);
        }

        public List<Questao> GetQuestoesList(int tax_id)
        {
            QuestaoDAO questoes = new QuestaoDAO();

            return questoes.GetQuestoesList(tax_id);
            
        }

        public List<QuestaoEntity> GetQuestoesTaxList(int tax_id)
        {
            QuestaoDAO questoes = new QuestaoDAO();

            return questoes.GetQuestoesTaxList(tax_id);

        }

        public void AdicionarQuestao(int nivelDificuladade, string xmlQuestao, int? tempo)
        {

            Questao novaQuestao = new Questao();

            novaQuestao.Q_NIVEL_DIFICULDADE= nivelDificuladade;
            novaQuestao.Q_XML = xmlQuestao;
            novaQuestao.Q_TEMPO = tempo;

            new QuestaoDAO().AdicionarQuestao(novaQuestao);
        }

        public void AdicionarQuestao(QuestaoEntity novaQuestao, List<TrechoDefeitoEntity> tdList)
        {
            new QuestaoDAO().AdicionarQuestao(novaQuestao, tdList);
        }

    }
}
