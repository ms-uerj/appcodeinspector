using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CIDao.Domain;

namespace CIDao.DAO
{
    public class TrechoRespostaDAO
    {
        private InspectorXDBDataContext db = new InspectorXDBDataContext();

        public bool setTrechoResposta(List<TrechoRespostaEntity> trechoResposta)
        {
            try
            {
                foreach (TrechoRespostaEntity trecho in trechoResposta)
                {
                    Trecho_Resposta tr = new Trecho_Resposta();
                    tr.U_ID = trecho.U_ID;
                    tr.Q_ID = trecho.Q_ID;
                    tr.IT_ID = trecho.IT_ID;
                    tr.TR_TRECHO_SELECIONADO = trecho.TRECHO_RESPOSTA;

                    db.Trecho_Respostas.InsertOnSubmit(tr);
                }
                db.SubmitChanges();

                return true;
            }
            catch (Exception)
            {
                throw;
            }
        }

        public List<TrechoRespostaEntity> getTrechoRespostas(int usuario_id,int partida_id, int questao_id)
        {
            try
            {
                var trechosRespostas = from tr in db.Trecho_Respostas
                                       from p in db.Partidas
                                       from hq in db.Historico_Questaos
                                       from q in db.Questaos
                                       where tr.U_ID==usuario_id
                                       && tr.Q_ID==questao_id
                                       && tr.Q_ID == q.Q_ID
                                       && q.Q_ID==hq.Q_ID
                                       && hq.P_ID== partida_id
                                       select tr;


                List<Trecho_Resposta> trechoRespostaList = trechosRespostas.ToList();
                List<TrechoRespostaEntity> trechoRespostaentityList = new List<TrechoRespostaEntity>();

                foreach (Trecho_Resposta trecho in trechoRespostaList)
                {
                    TrechoRespostaEntity tre = new TrechoRespostaEntity();
                    tre.TR_ID = trecho.TR_ID;
                    tre.U_ID = trecho.U_ID;
                    tre.Q_ID = trecho.Q_ID;
                    tre.IT_ID = trecho.IT_ID;
                    tre.TRECHO_RESPOSTA = trecho.TR_TRECHO_SELECIONADO;

                    ItemTaxonomiaEntity itemTaxEntity = new ItemTaxonomiaEntity();

                    itemTaxEntity.ID = trecho.ItemTaxonomia.IT_ID;
                    itemTaxEntity.Nome =  trecho.ItemTaxonomia.IT_Nome;
                    itemTaxEntity.Descricao =  trecho.ItemTaxonomia.IT_Descricao;
                    itemTaxEntity.T_ID =  trecho.ItemTaxonomia.IT_ID;

                    tre.TR_ItemTaxonomia = itemTaxEntity;

                    trechoRespostaentityList.Add(tre);
                }

                return trechoRespostaentityList;
            }
            catch (Exception)
            {
                throw;
            }
        }
    }
}
