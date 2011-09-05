using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CIDao.Domain;

namespace CIDao.DAO
{
    public class TrechoDefeitoDAO : DAOTools
    {
        private InspectorXDBDataContext db = new InspectorXDBDataContext();

        public List<TrechoDefeitoEntity> GetTrechosDefeitoList(int questao_id)
        {
            var trechoDefeitos = from td in db.TrechoDefeitos
                                 from q_td in db.Questao_TrechoDefeitos
                                 from q in db.Questaos
                                 where td.D_ID == q_td.TD_id
                                     & q.Q_ID == q_td.Q_id
                                     & q.Q_ID == questao_id
                                 select td;

            List<TrechoDefeitoEntity> tdeList = new List<TrechoDefeitoEntity>();

            foreach (TrechoDefeito td in trechoDefeitos)
            {
                TrechoDefeitoEntity tde = new TrechoDefeitoEntity();
                tde.IT_ID = td.IT_ID;
                tde.Conteudo = td.D_Conteudo;
                tde.D_ID = tde.D_ID;
                tde.Explicacao = tde.Explicacao;

                tdeList.Add(tde);
            }

            return tdeList;
        }

        public ItemTaxonomiaEntity getTrechoDefeitoResposta(int td_id)
        {
            var resposta = (from td in db.TrechoDefeitos
                                 from it in db.ItemTaxonomias  
                                 where td.IT_ID == it.IT_ID
                                 && td.D_ID==td_id
                                 select it);

            ItemTaxonomiaEntity iteResposta= new ItemTaxonomiaEntity();
            foreach (ItemTaxonomia it in resposta)
            {
                iteResposta.Descricao = it.IT_Descricao;
                iteResposta.Nome = it.IT_Nome;
                iteResposta.ID = it.IT_ID;
                iteResposta.T_ID = it.T_ID;
            }
            return iteResposta;
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
