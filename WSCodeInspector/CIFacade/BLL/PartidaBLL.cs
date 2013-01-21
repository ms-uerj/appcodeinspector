using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CIDao.DAO;
using CIDao;
using CIDao.Domain;

namespace InspectorXBLL.BLL
{
    public class PartidaBLL
    {

        public List<PartidaEntity> getPartidas(int usuarioId)
        {
            return new PartidaDAO().getPartidas(usuarioId);
        }

        public List<PartidaEntity> getPartidasInspector(int usuarioId)
        {
            return new PartidaDAO().getPartidasInspector(usuarioId);
        }
        public int iniciarPartida(int partDificuldade,int userId,string tipoJogo)
        {
            #region [ Preenchimento do objeto ]

            Partida novaPartida = new Partida();
            novaPartida.P_NIVEL_DIFICULDADE = partDificuldade;
            novaPartida.P_DATA = DateTime.Now;
            novaPartida.P_JOGO_MODO = tipoJogo;

            #endregion

            return new PartidaDAO().iniciarPartida(novaPartida, userId, tipoJogo);
        }

        public PartidaEntity criarPartida(int partDificuldade, string tipoJogo)
        {
            #region [ Preenchimento do objeto ]

            Partida novaPartida = new Partida();
            novaPartida.P_NIVEL_DIFICULDADE = partDificuldade;
            novaPartida.P_DATA = DateTime.Now;
            novaPartida.P_JOGO_MODO = tipoJogo;

            #endregion

            return new PartidaDAO().criarPartida(novaPartida);
        }

        public void relacionarUsrPartida(int[] userId, int partidaId)
        {
            new PartidaDAO().relacionarUsrPartida(userId, partidaId);
        }

        public void removerFullInspectPartida(int partidaId)
        {
            new PartidaDAO().removerFullInspectPartida(partidaId);
        }

        public void removerUsrPartida(int userId, int partidaId)
        {
            new PartidaDAO().removerUsrPartida(userId, partidaId);
        }

        public void encerrarPartida(int partidaEncerrada_id, int pontuacaoTotal)
        {
            new PartidaDAO().encerrarPartida(partidaEncerrada_id,pontuacaoTotal);
        }
    }
}
