using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CIDao.DAO;
using CIDao;
using CIDao.Domain;

namespace InspectorXBLL.BLL
{
    public class TrechoDefeitoBLL
    {
        public List<TrechoDefeitoEntity> GetTrechosDefeitoList(int questao_id)
        {
            return new TrechoDefeitoDAO().GetTrechosDefeitoList(questao_id);
        }

        public List<TrechoDefeitoEntity> getTrechosDefeitoList(int itemTaxonomiaId)
        {
            return new TrechoDefeitoDAO().getTrechosDefeitoList(itemTaxonomiaId);
        }

        public ItemTaxonomiaEntity getTrechoDefeitoResposta(int td_id)
        {
            return new TrechoDefeitoDAO().getTrechoDefeitoResposta(td_id);
        }

        public bool AdicionarTrechoDefeito(int questao_id,int itemTaxonomia_id,string td_explicacao,string td_conteudo)
        {
            try
            {
                TrechoDefeito td = new TrechoDefeito();
                td.D_Explicacao = td_explicacao;
                td.D_Conteudo = td_conteudo;
                td.IT_ID=itemTaxonomia_id;

                Questao q = new Questao();
                q.Q_ID = questao_id;

                return new TrechoDefeitoDAO().AdicionarTrechoDefeito(q, td);
            }
            catch (Exception)
            {
                throw;
            }
        }
    }
}
