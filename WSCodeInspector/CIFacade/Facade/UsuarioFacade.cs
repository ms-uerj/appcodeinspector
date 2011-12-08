using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CIDao.DAO;
using CIDao;
using System.Data;

namespace CIFacade.Facade
{
    public class UsuarioFacade
    {
        public bool AlterarUsuario(string loginAtual, string senhaAtual,string novoNome, string novoLogin,string novaSenha,string novoEmail)
        {

            #region [ Validação dos campos preenchidos ]

            Usuario usuarioModificado = new Usuario();

            if (String.IsNullOrEmpty(novoNome.Trim()))
            {
                usuarioModificado.U_NOME=novoNome;
            }
            if (String.IsNullOrEmpty(novoLogin.Trim()))
            {
                usuarioModificado.U_LOGIN = novoLogin;
            }
            if (String.IsNullOrEmpty(novoEmail.Trim()))
            {
                usuarioModificado.U_EMAIL = novoEmail;
            }
            if (String.IsNullOrEmpty(novaSenha.Trim()))
            {
                usuarioModificado.U_SENHA = novaSenha;
            }

            #endregion

            return new UsuarioDAO().AlterarUsuario(loginAtual, senhaAtual,usuarioModificado);
        }
        
        public bool AutenticarUsuario(string login, string senha)
        {
            return new UsuarioDAO().AtenticarUsuario(login, senha);
        }

        public bool CriarUsuario(string nome, string login, string email, string senha)
        {

            #region [ Criando um novo objeto usuario ]

            Usuario novoUsuario = new Usuario();

            novoUsuario.U_NOME = nome;
            novoUsuario.U_LOGIN = login;
            novoUsuario.U_EMAIL = email;
            novoUsuario.U_SENHA = senha;

            #endregion

            return new UsuarioDAO().CriarUsuario(novoUsuario);
        }

        //public List<RankRetorno> GetUsersRank(int nivelDificuldade)
        //{
        //    return new UsuarioDAO().GetUsersRank(nivelDificuldade);
        //}

        public Usuario RecuperarUsuario(string email)
        {
            return new UsuarioDAO().RecuperarUsuario(email);
        }

    }
}
