using System.Collections.Generic;
using System.Linq;
using System.Text;
using System;

using System.Data;
using CIDao.Domain;


namespace CIDao.DAO
{
    public class PartidaDAO
    {
        private InspectorXDBDataContext db = new InspectorXDBDataContext();

        public List<PartidaEntity> getPartidas(int usuarioId)
        {
            var partidas = from p in db.Partidas
                           from up in db.Usuario_Partidas
                           where up.U_ID == usuarioId &&
                                 up.P_ID == p.P_ID
                           select p;

            List<PartidaEntity> partidasEnL = new List<PartidaEntity>();
            List<Partida> partidasL = partidas.ToList();

            foreach (Partida part in partidasL)
            {
                PartidaEntity pe = new PartidaEntity();
                pe.P_DATA = part.P_DATA;
                pe.P_NIVEL_DIFICULDADE = part.P_NIVEL_DIFICULDADE;
                pe.P_PONTUACAO_TOTAL = part.P_PONTUACAO_TOTAL;
                pe.P_JOGO_MODO = part.P_JOGO_MODO;
                pe.P_ID = part.P_ID;
                partidasEnL.Add(pe);
            }

            return partidasEnL;
        }

        public List<PartidaEntity> getPartidasInspector(int usuarioId)
        {
            var partidas = from p in db.Partidas
                           from up in db.Usuario_Partidas
                           where up.U_ID == usuarioId &&
                                 up.P_ID == p.P_ID &&
                                 p.P_JOGO_MODO ==PartidaModoEnum.FULLINSPECTIONPROCESS
                           select p;

            List<PartidaEntity> partidasEnL = new List<PartidaEntity>();
            List<Partida> partidasL = partidas.ToList();

            foreach (Partida part in partidasL)
            {
                PartidaEntity pe = new PartidaEntity();
                pe.P_DATA = part.P_DATA;
                pe.P_NIVEL_DIFICULDADE = part.P_NIVEL_DIFICULDADE;
                pe.P_PONTUACAO_TOTAL = part.P_PONTUACAO_TOTAL;
                pe.P_JOGO_MODO = part.P_JOGO_MODO;
                pe.P_ID = part.P_ID;
                partidasEnL.Add(pe);
            }

            return partidasEnL;
        }

        public int iniciarPartida(Partida partidaIniciada, int userId)
        {
            try
            {
                Usuario usuarioAtual = db.Usuarios.Single(u => u.U_ID == userId);

                Usuario_Partida userp = new Usuario_Partida();
                userp.Usuario = usuarioAtual;
                userp.Partida = partidaIniciada;

                db.Usuario_Partidas.InsertOnSubmit(userp);

                db.SubmitChanges();

                return partidaIniciada.P_ID;
            }
            catch (Exception)
            {
                throw;
            }
        }

        public PartidaEntity criarPartida(Partida novaPartida)
        {
            try
            {
                db.Partidas.InsertOnSubmit(novaPartida);
                db.SubmitChanges();

                PartidaEntity partEnt = new PartidaEntity();
                partEnt.P_DATA = novaPartida.P_DATA;
                partEnt.P_ID = novaPartida.P_ID;
                partEnt.P_NIVEL_DIFICULDADE = novaPartida.P_NIVEL_DIFICULDADE;
                partEnt.P_JOGO_MODO = novaPartida.P_JOGO_MODO;

                return partEnt;
            }
            catch (Exception)
            {
                throw;
            }
        }

        public void relacionarUsrPartida(int[] userId,int partidaId)
        {
            try
            {
                for (int i = 0; i < userId.Length;i++)
                {
                    Usuario_Partida userP = new Usuario_Partida();
                    userP.U_ID = userId[i];
                    userP.P_ID = partidaId;

                    db.Usuario_Partidas.InsertOnSubmit(userP);
                }


                db.SubmitChanges();
            }
            catch (Exception)
            {
                throw;
            }
        }

        public void removerFullInspectPartida(int partidaId)
        {
            try
            {
                var partidasUser = from upartida in db.Usuario_Partidas
                                   where upartida.P_ID == partidaId
                                   select upartida;

                foreach (Usuario_Partida up in partidasUser.ToList())
                {
                    db.Usuario_Partidas.DeleteOnSubmit(up);
                }

                var trechosResposta = from tr in db.Trecho_Respostas
                                      from q in db.Questaos
                                      from hq in db.Historico_Questaos
                                      where 
                                         hq.P_ID == partidaId
                                      && hq.Q_ID == q.Q_ID
                                      && q.Q_ID == tr.Q_ID
                                      select tr;

                foreach (Trecho_Resposta tr in trechosResposta.ToList())
                {
                    db.Trecho_Respostas.DeleteOnSubmit(tr);
                }

                var historicoQuestaos = from hq in db.Historico_Questaos
                                        where hq.P_ID == partidaId
                                        select hq;

                foreach (Historico_Questao hq in historicoQuestaos.ToList())
                {
                    db.Historico_Questaos.DeleteOnSubmit(hq);
                }

                db.SubmitChanges();
            }
            catch (Exception)
            {
                throw;
            }
        }

        public void removerUsrPartida(int userId, int partidaId)
        {
            try
            {
                Usuario_Partida userP = db.Usuario_Partidas.Single(up=> up.U_ID==userId && up.P_ID==partidaId);

                db.Usuario_Partidas.DeleteOnSubmit(userP);
                db.SubmitChanges();
            }
            catch (Exception)
            {
                throw;
            }
        }

        public void encerrarPartida(int partidaEncerrada_id,int pontuacaoTotal)
        {
            try
            {
                Partida partidaAtual = db.Partidas.Single(p => p.P_ID == partidaEncerrada_id);
                partidaAtual.P_PONTUACAO_TOTAL = pontuacaoTotal;

                db.SubmitChanges();
            }
            catch (Exception)
            {
                throw;
            }
        }

    }
}
