using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CIDao.DAO;
using CIDao;

namespace CIFacade.Facade
{
    public class UsuarioFacade
    {
        public bool AutenticarUsuario(string login, string senha)
        {
            return new UsuarioDAO().AtenticarUsuario(login,senha);
        }

        public bool CriarUsuario(string nome, string login, string email, string senha)
        {

            Usuario novoUsario = new Usuario();

            novoUsario.Nome = nome;
            novoUsario.Login = login;
            novoUsario.Email = email;
            novoUsario.Senha = senha;

            return new UsuarioDAO().CriarUsuario(novoUsario ,email, senha);
        }
    }
}
