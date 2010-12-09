using System.Collections.Generic;
using System.Linq;
using System.Text;
using System;

using System.Data;


namespace CIDao.DAO
{
    public class PartidaDAO
    {
        private CILinqDataContext db = new CILinqDataContext();

        public void EncerrarPartida(Partida partidaEncerrada, string userLogin)
        {
            try
            {

                Usuario usuarioAtual = db.Usuarios.Single(p => p.U_LOGIN == userLogin);

                partidaEncerrada.U_ID = usuarioAtual.U_ID;

                db.Partidas.InsertOnSubmit(partidaEncerrada);
                db.SubmitChanges();

            }
            catch (Exception)
            {
                throw;
            }
        }
    }
}
