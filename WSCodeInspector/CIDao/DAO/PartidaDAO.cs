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

        public int iniciarPartida(Partida partidaIniciada, string userLogin)
        {
            try
            {
                Usuario usuarioAtual = db.Usuarios.Single(u => u.U_LOGIN == userLogin);
                usuarioAtual.Partidas.Add(partidaIniciada);               
                db.SubmitChanges();

                return partidaIniciada.P_ID;

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
