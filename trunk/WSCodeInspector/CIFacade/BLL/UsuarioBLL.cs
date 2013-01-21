using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CIDao.DAO;
using CIDao.Domain;
using CIDao;
using System.Data;

namespace InspectorXBLL.BLL
{
    public class UsuarioBLL
    {

        public List<UsuarioEntity> getUsuarios(int id, string nome, string email, string login, string tipo)
        {
            UsuarioEntity userEntity = new UsuarioEntity(id, nome, email, null, login, tipo);

            return new UsuarioDAO().getUsuarios(userEntity);
        }

        public List<UsuarioEntity> getUsuarioByTrecho(string trecho, int it_id, int partida_id)
        {
            return new UsuarioDAO().getUsuarioByTrecho(trecho, it_id, partida_id);
        }

        public List<UsuarioEntity> getUsuarios(int artefoId)
        {
            return new UsuarioDAO().getUsuarios(artefoId);
        }

        public List<UsuarioEntity> getUsuariosByPartida(int partidaId)
        {
            return new UsuarioDAO().getUsuariosByPartida(partidaId);
        }



        public List<UsuarioEntity> getTodosUsuariosFI(int userTID)
        {
            return new UsuarioDAO().getTodosUsuariosFI(userTID);
        }
        public List<UsuarioEntity> getUsuariosTipoInspetor()
        {
            return new UsuarioDAO().getUsuariosTipoInspetor();
        }

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
        
        public UsuarioEntity AutenticarUsuario(string login, string senha)
        {
            return new UsuarioDAO().AtenticarUsuario(login, senha);
        }

        public int inserirUsuarioTipoIfDontExist(int usuarioID, String usuarioTipo)
        {
            return new UsuarioDAO().inserirUsuarioTipoIfDontExist(usuarioID, usuarioTipo);
        }

        public bool CriarUsuario(string nome, string login, string email, string senha)
        {

            if(new UsuarioDAO().AtenticarUsuario(login, senha)!=null)
            {
                throw new Exception("Usuario já existente");
            }

            #region [ Criando um novo objeto usuario ]

            Usuario novoUsuario = new Usuario();

            novoUsuario.U_NOME = nome;
            novoUsuario.U_LOGIN = login;
            novoUsuario.U_EMAIL = email;
            novoUsuario.U_SENHA = senha;


            #endregion

            return new UsuarioDAO().CriarUsuario(novoUsuario);
        }

        public List<UserRankEntity> GetUsersRank(int nivelDificuldade)
        {
            List <UserRankEntity> usersRank = new UsuarioDAO().GetUsersRank(nivelDificuldade);

            List<Usuario> users = new UsuarioDAO().GetUsers();

            List<UserRankEntity> ranksList = new List<UserRankEntity>();

            foreach (var user in users)
            {
                int? pontos = 0;

                foreach(var userHistQuestao in usersRank)
                {
                    if (user.U_NOME == userHistQuestao.Nome)
                        pontos = pontos + userHistQuestao.Pontos;
                }

                UserRankEntity userRank = new UserRankEntity();
                userRank.Nome = user.U_NOME;
                userRank.Pontos = pontos;
                userRank.Email = user.U_EMAIL;

                ranksList.Add(userRank);

            }

            ranksList.OrderBy(userTotalPoints => userTotalPoints.Pontos);

            return ranksList;
        }

        public Usuario RecuperarUsuario(string email)
        {
            return new UsuarioDAO().RecuperarUsuario(email);
        }

    }
}
