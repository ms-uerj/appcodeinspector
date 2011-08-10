using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace CIDao.DAO
{
    public class TrechoDefeitoDAO : DAOTools
    {
        private InspectorXDBDataContext db = new InspectorXDBDataContext();

        public List<TrechoDefeito> GetTrechosDefeitoList(int questao_id)
        {
            var trechoDefeitos = from td in db.TrechoDefeitos
                                 from q_td in db.Questao_TrechoDefeitos
                                 from q in db.Questaos
                                 where td.D_ID == q_td.TD_id
                                     & q.Q_ID == q_td.Q_id
                                     & q.Q_ID == questao_id
                                 select td;

            return trechoDefeitos.ToList();
        }

        public bool AdicionarTrechoDefeito(Questao questaoAlvo, TrechoDefeito novoTrechoDefeito)
        {
            try
            {
                Questao_TrechoDefeito q_td = new Questao_TrechoDefeito();
                q_td.Questao = questaoAlvo;
                q_td.TrechoDefeito = novoTrechoDefeito;

                db.Questao_TrechoDefeitos.InsertOnSubmit(q_td);

                db.TrechoDefeitos.InsertOnSubmit(novoTrechoDefeito);
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
