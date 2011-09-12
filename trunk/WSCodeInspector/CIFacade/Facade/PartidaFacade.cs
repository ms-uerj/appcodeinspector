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

        public int iniciarPartida(int partDificuldade,string userLogin)
        {

            #region [ Preenchimento do objeto ]

            Partida p = new Partida();
            p.P_NIVEL_DIFICULDADE = partDificuldade;
            p.P_DATA = DateTime.Now;

            #endregion

            return new PartidaDAO().iniciarPartida(p, userLogin);

        }

        public void encerrarPartida(int partidaEncerrada_id, int pontuacaoTotal)
        {

            new PartidaDAO().encerrarPartida(partidaEncerrada_id,pontuacaoTotal);

        }

    }
}
