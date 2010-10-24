using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace CIDao.DAO
{
    public class QuestaoDAO
    {

        private CodeInspectorDataContext db = new CodeInspectorDataContext();
        public List<Questao> GetQuestoes(int nivelDificuldade)
        {
            var questoesLinq = from q in db.Questaos
                           where q.NivelDificuldade == nivelDificuldade
                           select q;

            List<Questao> questoes = questoesLinq.ToList();

            return questoes;
        }

    }
}
