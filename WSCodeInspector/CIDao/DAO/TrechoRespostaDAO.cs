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

        public void setTrechoResposta(List<TrechoRespostaEntity> trechoResposta,int partida_id,int user_id)
        {
            try
            {
                foreach (TrechoRespostaEntity trecho in trechoResposta)
                {
                    Usuario_Partida userPartida = new PartidaDAO().getUsuarioPartida(user_id, partida_id);

                    Trecho_Resposta tr = new Trecho_Resposta();
                    tr.UP_ID = userPartida.UP_ID;
                    tr.Q_ID = trecho.Q_ID;
                    tr.IT_ID = trecho.IT_ID;
                    tr.TR_TRECHO_SELECIONADO = trecho.TRECHO_RESPOSTA;

                    db.Trecho_Respostas.InsertOnSubmit(tr);
                }
                db.SubmitChanges();

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
                Usuario_Partida userPartida = new PartidaDAO().getUsuarioPartida(usuario_id, partida_id);

                var trechosRespostas = from tr in db.Trecho_Respostas
                                       from q in db.Questaos
                                       where tr.UP_ID == userPartida.UP_ID
                                       && tr.Q_ID==questao_id
                                       && tr.Q_ID == q.Q_ID
                                       select tr;

                List<Trecho_Resposta> trechoRespostaList = trechosRespostas.ToList();
                List<TrechoRespostaEntity> trechoRespostaEntityList = new List<TrechoRespostaEntity>();

                foreach (Trecho_Resposta trecho in trechoRespostaList)
                {
                    TrechoRespostaEntity tre = new TrechoRespostaEntity();
                    tre.TR_ID = trecho.TR_ID;
                    tre.UP_ID = trecho.UP_ID;
                    tre.Q_ID = trecho.Q_ID;
                    tre.IT_ID = trecho.IT_ID;
                    tre.TRECHO_RESPOSTA = trecho.TR_TRECHO_SELECIONADO;

                    ItemTaxonomiaEntity itemTaxEntity = new ItemTaxonomiaEntity();

                    itemTaxEntity.ID = trecho.ItemTaxonomia.IT_ID;
                    itemTaxEntity.Nome =  trecho.ItemTaxonomia.IT_Nome;
                    itemTaxEntity.Descricao =  trecho.ItemTaxonomia.IT_Descricao;
                    itemTaxEntity.T_ID =  trecho.ItemTaxonomia.IT_ID;

                    tre.TR_ItemTaxonomia = itemTaxEntity;

                    trechoRespostaEntityList.Add(tre);
                }

                return trechoRespostaEntityList;
            }
            catch (Exception)
            {
                throw;
            }
        }
    }
}
