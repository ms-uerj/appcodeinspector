using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CIDao.DAO;
using CIDao;
using CIDao.Domain;

namespace CIFacade.Facade
{
    public class PartidaFacade
    {

        public void iniciarPartida(PartidaEntity partidaIniciada, string userLogin)
        {

            #region [ Preenchimento do objeto ]

            Partida p = new Partida();
            p.P_NIVEL_DIFICULDADE = partidaIniciada.P_NIVEL_DIFICULDADE;
            p.P_DATA = partidaIniciada.P_DATA;
            p.P_DATA = DateTime.Now;

            #endregion

            new PartidaDAO().iniciarPartida(p, userLogin);

        }

        public void encerrarPartida(int partidaEncerrada_id, int pontuacaoTotal)
        {

            new PartidaDAO().encerrarPartida(partidaEncerrada_id,pontuacaoTotal);

        }

    }
}
