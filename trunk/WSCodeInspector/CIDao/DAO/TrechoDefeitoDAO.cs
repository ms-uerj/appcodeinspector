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
            var trechoDefeitos = (from td in db.TrechoDefeitos
                                 from q_td in db.Questao_TrechoDefeitos
                                 from q in db.Questaos
                                 where td.D_ID == q_td.TD_id
                                     & q_td.Q_id == questao_id
                                 select td).Distinct();

            List<TrechoDefeitoEntity> tdeList = new List<TrechoDefeitoEntity>();

            foreach (TrechoDefeito td in trechoDefeitos)
            {
                TrechoDefeitoEntity tde = new TrechoDefeitoEntity();
                tde.IT_ID = td.IT_ID;
                tde.Conteudo = td.D_Conteudo;
                tde.D_ID = td.D_ID;
                tde.Explicacao = td.D_Explicacao;

                ItemTaxonomiaEntity itemTaxEntity = new ItemTaxonomiaEntity();

                itemTaxEntity.ID = td.ItemTaxonomia.IT_ID;
                itemTaxEntity.Nome = td.ItemTaxonomia.IT_Nome;
                tde.classificao = td.ItemTaxonomia.IT_Nome;
                itemTaxEntity.Descricao = td.ItemTaxonomia.IT_Descricao;
                itemTaxEntity.T_ID = td.ItemTaxonomia.IT_ID;

                tde.itemTax = itemTaxEntity;
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

        public List<TrechoDefeitoEntity> getTrechosDefeitoList(int itemTaxonomiaId)
        {
            var trechosDefeito = (from td in db.TrechoDefeitos
                            from it in db.ItemTaxonomias
                            where td.IT_ID == it.IT_ID
                            && it.IT_ID == itemTaxonomiaId
                            select td);

            TrechoDefeitoEntity tde = new TrechoDefeitoEntity();

            List<TrechoDefeitoEntity> tdeList = new List<TrechoDefeitoEntity>();
            foreach (TrechoDefeito td in trechosDefeito)
            {
                tde.Conteudo= td.D_Conteudo;
                tde.D_ID = td.D_ID;
                tde.Explicacao = td.D_Explicacao;
                tde.IT_ID= td.IT_ID;

                tdeList.Add(tde);
            }
            return tdeList;
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
