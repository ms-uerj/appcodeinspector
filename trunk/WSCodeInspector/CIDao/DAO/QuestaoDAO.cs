using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using CIDao.Domain;

namespace CIDao.DAO
{
    public class QuestaoDAO : DAOTools
    {

        private InspectorXDBDataContext db = new InspectorXDBDataContext();

        public List<QuestaoEntity> GetQuestoesXML(int nivelDificuldade)
        {
            var questoes = from q in db.Questaos
                           where q.Q_NIVEL_DIFICULDADE == nivelDificuldade
                           select q;

            List<QuestaoEntity> questoesEL = new List<QuestaoEntity>();
            List<Questao> questaL = questoes.ToList();

            foreach (Questao item in questaL)
            {
                QuestaoEntity qe = new QuestaoEntity();
                qe.Q_ID = item.Q_ID;
                qe.Q_Nivel_Dificuldade = item.Q_NIVEL_DIFICULDADE;
                qe.Q_XML = item.Q_XML;
                qe.Q_nome = item.Q_Nome;
                questoesEL.Add(qe);
            }

            return questoesEL;
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

        public List<QuestaoEntity> GetQuestoesTaxList(int tax_id)
        {
            var questoes = (from q in db.Questaos
                            from q_td in db.Questao_TrechoDefeitos
                            from td in db.TrechoDefeitos
                            from it in db.ItemTaxonomias
                            from t in db.Taxonomias
                            where q.Q_ID == q_td.Q_id
                            && q_td.Q_TD_id == td.D_ID
                            && td.IT_ID == it.IT_ID
                            && it.T_ID == t.T_ID
                            && t.T_ID==tax_id
                            select q).Distinct();

            List<Questao> questList = questoes.ToList();
            List<QuestaoEntity> questEnList = new List<QuestaoEntity>();

            foreach (Questao item in questList)
            {
                QuestaoEntity questEn = new QuestaoEntity();
                questEn.Q_ID = item.Q_ID;
                questEn.Q_Nivel_Dificuldade = item.Q_NIVEL_DIFICULDADE;
                questEn.Q_nome = item.Q_Nome;
                questEn.Q_XML = item.Q_XML;

                questEnList.Add(questEn);
            }



            return questEnList;
        }

        /// <summary>
        /// Adiciona uma nova questão com defeitos já definidos
        /// </summary>
        /// <param name="novaQuestao"></param>
        /// <param name="tdList"></param>
        public void AdicionarQuestao(QuestaoEntity novaQuestao,List<TrechoDefeitoEntity> tdList)
        {
            try
            {
                

                foreach (TrechoDefeitoEntity tde in tdList)
                {
                    Questao questao = new Questao();
                    questao.Q_ID = novaQuestao.Q_ID;
                    questao.Q_NIVEL_DIFICULDADE = novaQuestao.Q_Nivel_Dificuldade;
                    questao.Q_XML = novaQuestao.Q_XML;
                    questao.Q_Nome = novaQuestao.Q_nome;

                    Questao_TrechoDefeito q_td = new Questao_TrechoDefeito();
                    q_td.Questao = questao;

                    TrechoDefeito td = new TrechoDefeito();
                    td.D_ID = tde.D_ID;
                    td.IT_ID = tde.IT_ID;
                    td.D_Conteudo = tde.Conteudo;
                    td.D_Explicacao = tde.Explicacao;

                    q_td.TrechoDefeito = td;
                    db.Questao_TrechoDefeitos.InsertOnSubmit(q_td);
                }


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
