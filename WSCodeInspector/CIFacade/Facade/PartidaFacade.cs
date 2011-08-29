using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CIDao.DAO;
using CIDao;

namespace CIFacade.Facade
{
    public class PartidaFacade
    {

        public void EncerrarPartida(int pontuacaoTotal,int nivelDificuldade,string userEmail)
        {

            #region [ Preenchimento do objeto ]

            Partida partidaEncerrada = new Partida();

            partidaEncerrada.P_NIVEL_DIFICULDADE = nivelDificuldade;
            partidaEncerrada.P_PONTUCAO_TOTAL =  pontuacaoTotal;
            partidaEncerrada.P_DATA = DateTime.Now;

            #endregion

            new PartidaDAO().EncerrarPartida(partidaEncerrada, userEmail);

        }

    }
}
