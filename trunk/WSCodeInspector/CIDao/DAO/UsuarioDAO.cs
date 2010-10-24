using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace CIDao.DAO
{
    public class UsuarioDAO
    {

        private CodeInspectorDataContext db= new CodeInspectorDataContext();

        public bool AtenticarUsuario(string login, string senha)
        {
            var usuario = (from u in db.Usuarios
                          where u.Login == login && u.Senha == senha  
                          select u).Count();

            return Convert.ToBoolean(usuario);
        }

        public bool CriarUsuario(Usuario novoUsuario, string email, string senha)
        {
            if (AtenticarUsuario(email, senha) == false)

                try
                {

                    db.Usuarios.InsertOnSubmit(novoUsuario);
                    db.SubmitChanges();
                    return true;

                }
                catch
                {
                    throw;
                }

            else return false;

        }

        public List<Usuario> GetUsersRank()
        {
 
        }

    }
}
