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

        public void setTrechoResposta(List<TrechoRespostaEntity> trechoResposta,int partida_id,int user_id,long duracao)
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
                    tr.TR_Pontos = trecho.pontos;
                    tr.TR_QuestaoDuracao = duracao;
                    tr.TR_ModeradorAval = trecho.trModeradorAval;

                    db.Trecho_Respostas.InsertOnSubmit(tr);
                }
                db.SubmitChanges();

            }
            catch (Exception)
            {
                throw;
            }
        }

        public void setTrechoRespostaAval(string trecho,int q_id,int it_id, int partida_id,int pontos)
        {
            try
            {
                trecho = trecho.Trim().Normalize();

                var trechosRespostas = (from tr in db.Trecho_Respostas
                                       from q in db.Questaos
                                       from up in db.Usuario_Partidas
                                       where tr.Q_ID == q_id
                                       && tr.TR_Pontos < 2
                                       && tr.TR_ModeradorAval ==0
                                       && tr.UP_ID == up.UP_ID
                                       && up.P_ID == partida_id
                                       && tr.TR_TRECHO_SELECIONADO.Trim().Contains(trecho) 
                                       && tr.IT_ID == it_id
                                       select tr).Distinct();

                //List<Trecho_Resposta> trechoRespostaList = trechosRespostas.ToList();

                foreach (Trecho_Resposta tr in trechosRespostas)
                {
                    //Flag de trecho avaliado
                    tr.TR_ModeradorAval = 1;
                    tr.TR_Pontos = pontos;
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
                    tre.classificao = trecho.ItemTaxonomia.IT_Nome;

                    //tre.TR_ItemTaxonomia = itemTaxEntity;

                    trechoRespostaEntityList.Add(tre);
                }

                return trechoRespostaEntityList;
            }
            catch (Exception)
            {
                throw;
            }
        }

        public List<TrechoRespostaEntity> getTrechosArtefato(int questao_id, int partida_id)
        {
            try
            {
                var trechosRespostas = (from tr in db.Trecho_Respostas
                                       from q in db.Questaos
                                       from up in db.Usuario_Partidas
                                       where tr.Q_ID == questao_id
                                       && tr.TR_Pontos < 2
                                       && tr.TR_ModeradorAval==0 
                                       && tr.UP_ID == up.UP_ID
                                       && up.P_ID == partida_id
                                       select tr).Distinct();


                List<Trecho_Resposta> trechoRespostaList = trechosRespostas.ToList();

                //List<Trecho_Resposta> distincT = new List<Trecho_Resposta>();
                //HashSet<string> dupSet = new HashSet<string>();
                //HashSet<int?> dupSet2 = new HashSet<int?>();

                //foreach (Trecho_Resposta trecho in trechoRespostaList)
                //{
                //    bool dupTrecho = dupSet.Contains(trecho.TR_TRECHO_SELECIONADO.Trim().Normalize());
                //    bool dupIt = dupSet.Contains(trecho.TR_TRECHO_SELECIONADO.Trim().Normalize());

                //    if (!dupTrecho&&!dupIt)
                //    {
                //        distincT.Add(trecho);
                //        dupSet2.Add(trecho.IT_ID);
                //        dupSet.Add(trecho.TR_TRECHO_SELECIONADO.Trim().Normalize());
                //    }
                //}


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
                    itemTaxEntity.Nome = trecho.ItemTaxonomia.IT_Nome;
                    itemTaxEntity.Descricao = trecho.ItemTaxonomia.IT_Descricao;
                    itemTaxEntity.T_ID = trecho.ItemTaxonomia.IT_ID;
                    tre.classificao = trecho.ItemTaxonomia.IT_Nome;

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
