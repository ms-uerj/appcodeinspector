using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Database.DAO;

namespace Database.Facade
{
    public class UsuarioFacade
    {
        public bool AutenticarUsuario(string login, string senha)
        {
            return new UsuarioDAO().AtenticarUsuario(login,senha);
        }

        public bool CriarUsuario(string nome, string login, string email, string senha)
        {
            return new UsuarioDAO().CriarUsuario(nome, login, email, senha);
        }
    }
}
