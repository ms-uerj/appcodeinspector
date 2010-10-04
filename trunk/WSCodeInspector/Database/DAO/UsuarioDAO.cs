using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Database.DAO;

namespace Database.DAO
{
    public class UsuarioDAO
    {

        private CodeInspectorDataContext db= new CodeInspectorDataContext();

        public List<Usuario> GetUsuario(int idUsuario)
        {
            var usuario = from u in db.Usuarios
                          where u.IdUsuario == idUsuario
                          select u;

            List<Usuario> userList = usuario.ToList();

            return userList;
        }

        public bool AtenticarUsuario(string login, string senha)
        {
            var usuario = (from u in db.Usuarios
                          where u.Login == login && u.Senha == senha  
                          select u).Count();

            return Convert.ToBoolean(usuario);
        }

        public bool CriarUsuario(string nome, string login, string email, string senha)
        {
            if (AtenticarUsuario(login, senha) == false)

                try
                {
                    Usuario novoUser = new Usuario();

                    novoUser.Nome = nome;
                    novoUser.Login = login;
                    novoUser.Email = email;
                    novoUser.Senha = senha;

                    db.Usuarios.InsertOnSubmit(novoUser);
                    db.SubmitChanges();
                    return true;
                }
                catch
                {
                    throw;
                }

            else return false;

        }

    }
}
