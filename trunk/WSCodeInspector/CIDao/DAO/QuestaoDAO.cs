using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;

namespace CIDao.DAO
{
    public class QuestaoDAO : DAOTools
    {

        private CodeInspectorDataContext db = new CodeInspectorDataContext();

        public DataTable GetQuestoes(int nivelDificuldade)
        {
            var questoes = from q in db.Questaos
                               where q.NivelDificuldade == nivelDificuldade
                               select q;

            //List<Questao> questoes = questoesLinq.ToList();

            return ToDataTable(db,questoes);
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
