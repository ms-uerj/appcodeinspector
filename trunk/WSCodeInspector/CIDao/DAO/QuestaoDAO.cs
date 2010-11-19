using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;

namespace CIDao.DAO
{
    public class QuestaoDAO : DAOTools
    {

        private CILinqDataContext db = new CILinqDataContext();

        public List<string> GetQuestoes(int nivelDificuldade)
        {
            var questoes = from q in db.Questaos
                               where q.Q_NIVEL_DIFICULDADE == nivelDificuldade
                               select q.Q_XML;

            //List<Questao> questoes = questoesLinq.ToList();

            return questoes.ToList();
        }

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

    }
}
