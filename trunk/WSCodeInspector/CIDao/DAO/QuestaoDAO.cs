using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;

namespace CIDao.DAO
{
    public class QuestaoDAO : DAOTools
    {

        private InspectorXDBDataContext db = new InspectorXDBDataContext();

        public List<string> GetQuestoesXML(int nivelDificuldade)
        {
            var questoes = from q in db.Questaos
                               where q.Q_NIVEL_DIFICULDADE == nivelDificuldade
                               select q.Q_XML;

            //List<Questao> questoes = questoesLinq.ToList();

            return questoes.ToList();
        }

        //Depricated
        public List<int?> GetQuestoesRespostas(int nivelDificuldade)
        {
            var questoes = from q in db.Questaos
                           where q.Q_ID == nivelDificuldade
                           select q.MotivoErroId;

            //List<Questao> questoes = questoesLinq.ToList();

            return questoes.ToList();
        }

        public List<Questao> GetQuestoesList(int nivelDificuldade)
        {
            var questoes = from q in db.Questaos
                           where q.Q_NIVEL_DIFICULDADE == nivelDificuldade
                           select q;

            return questoes.ToList();
        }

        /// <summary>
        /// Adiciona uma nova questão com defeitos já definidos
        /// </summary>
        /// <param name="novaQuestao"></param>
        /// <param name="tdList"></param>
        public void AdicionarQuestao(Questao novaQuestao,List<TrechoDefeito> tdList)
        {
            try
            {
                
                foreach (TrechoDefeito td in tdList)
                {
                    Questao_TrechoDefeito q_td = new Questao_TrechoDefeito();
                    q_td.Questao = novaQuestao;
                    q_td.TrechoDefeito = td;
                    db.Questao_TrechoDefeitos.InsertOnSubmit(q_td);
                }

                db.Questaos.InsertOnSubmit(novaQuestao);
                db.SubmitChanges();

            }
            catch (Exception)
            {
                throw;
            }
        }

        /// <summary>
        /// Adiciona uma nova questão
        /// </summary>
        /// <param name="novaQuestao"></param>
        /// <param name="tdList"></param>
        public void AdicionarQuestao(Questao novaQuestao)
        {
            try
            {
                db.Questaos.InsertOnSubmit(novaQuestao);
                db.SubmitChanges();

            }
            catch (Exception)
            {
                throw;
            }
        }

        public bool AlterarQuestao(int questao_id, Questao questaoModificada)
        {

            try
            {

                Questao QuestaoAntiga = db.Questaos.Single(q => q.Q_ID == questao_id);

                if (questaoModificada.Q_NIVEL_DIFICULDADE != null)
                {
                    QuestaoAntiga.Q_NIVEL_DIFICULDADE = questaoModificada.Q_NIVEL_DIFICULDADE;
                }
                if (questaoModificada.Q_XML != null)
                {
                    QuestaoAntiga.Q_XML = questaoModificada.Q_XML;
                }
                if (questaoModificada.Q_TEMPO != null)
                {
                    QuestaoAntiga.Q_TEMPO = questaoModificada.Q_TEMPO;
                }
                if (questaoModificada.MotivoErroId != null)
                {
                    QuestaoAntiga.MotivoErroId = questaoModificada.MotivoErroId;
                }

                db.SubmitChanges();
                return true;

            }
            catch (Exception)
            {
                throw;
            }
        }

    }
}
