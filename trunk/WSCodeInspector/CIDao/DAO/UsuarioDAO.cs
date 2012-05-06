using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using CIDao.Domain;

namespace CIDao.DAO
{
    public class UsuarioDAO : DAOTools
    {

        private InspectorXDBDataContext db = new InspectorXDBDataContext();
        public List<UsuarioEntity> getUsuarios(UsuarioEntity user)
        {
            var usuarios = db.Usuarios.Where
                (u=> u.U_NOME == user.U_NOME
                || u.U_EMAIL == user.U_EMAIL
                || u.U_LOGIN == user.U_LOGIN
                || u.U_TIPO == user.U_TIPO
                );

            List<Usuario> userList = new List<Usuario>();
            userList = usuarios.ToList();

            List<UsuarioEntity> userEntityList = new List<UsuarioEntity>();

            if (userList.Count!=0)
            {
	            foreach (Usuario u in userList)
	            {
	                UsuarioEntity userEntity = new UsuarioEntity(u.U_ID,u.U_NOME,u.U_EMAIL,u.U_SENHA,u.U_LOGIN,u.U_TIPO);
	                userEntityList.Add(userEntity);
	            }
            }

            return userEntityList;
        }

        public List<UsuarioEntity> getUsuarios()
        {
            var usuarios = from user in db.Usuarios
                           where user.U_TIPO == UsuarioTipoEnum.INSPETOR
                           select user;

            List<Usuario> userList = new List<Usuario>();
            userList = usuarios.ToList();

            List<UsuarioEntity> userEntityList = new List<UsuarioEntity>();

            if (userList.Count != 0)
            {
                foreach (Usuario u in userList)
                {
                    UsuarioEntity userEntity = new UsuarioEntity(u.U_ID, u.U_NOME, u.U_EMAIL, u.U_SENHA, u.U_LOGIN, u.U_TIPO);
                    userEntityList.Add(userEntity);
                }
            }

            return userEntityList;
        }

        public List<UsuarioEntity> getUsuarios(int artefoId)
        {
            var usuarios = (from user in db.Usuarios
                           from tr in db.Trecho_Respostas
                           from q in db.Questaos
                           where user.U_ID == tr.U_ID
                              && tr.Q_ID == artefoId
                           select user).Distinct();

            List<Usuario> userList = new List<Usuario>();
            userList = usuarios.ToList();

            List<UsuarioEntity> userEntityList = new List<UsuarioEntity>();

            if (userList.Count != 0)
            {
                foreach (Usuario u in userList)
                {
                    UsuarioEntity userEntity = new UsuarioEntity(u.U_ID, u.U_NOME, u.U_EMAIL, u.U_SENHA, u.U_LOGIN, u.U_TIPO);
                    userEntityList.Add(userEntity);
                }
            }

            return userEntityList;
        }


        public List<UsuarioEntity> getUsuariosByPartida(int partidaId)
        {
            var usuarios = (from user in db.Usuarios
                            from up in db.Usuario_Partidas
                            where user.U_ID == up.U_ID
                            && user.U_TIPO == UsuarioTipoEnum.INSPETOR
                               && up.P_ID == partidaId
                            select user).Distinct();

            List<Usuario> userList = new List<Usuario>();
            userList = usuarios.ToList();

            List<UsuarioEntity> userEntityList = new List<UsuarioEntity>();

            if (userList.Count != 0)
            {
                foreach (Usuario u in userList)
                {
                    UsuarioEntity userEntity = new UsuarioEntity(u.U_ID, u.U_NOME, u.U_EMAIL, u.U_SENHA, u.U_LOGIN, u.U_TIPO);
                    userEntityList.Add(userEntity);
                }
            }

            return userEntityList;
        }

        public UsuarioEntity AtenticarUsuario(string login, string senha)
        {
            try
            {
                Usuario user = db.Usuarios.Single(u => u.U_LOGIN==login && u.U_SENHA==senha);

                UsuarioEntity usuario = new UsuarioEntity();

                if (user!=null)
                {
	                usuario.U_ID = user.U_ID;
	                usuario.U_LOGIN = user.U_LOGIN;
	                usuario.U_NOME = user.U_NOME;
	                usuario.U_SENHA = user.U_SENHA;
	                usuario.U_LOGIN = user.U_LOGIN;
	                usuario.U_EMAIL= user.U_EMAIL;
                    usuario.U_TIPO = user.U_TIPO;
                }

                return usuario;
            }
            catch (InvalidOperationException)
            {
                return null;
            }
        }

        public Usuario RecuperarUsuario(string email)
        {
            try
            {

                Usuario usuario = db.Usuarios.Single(p => p.U_EMAIL == email);

                return usuario;
            }
            catch (Exception)
            {
                throw;
            }
        }

        public bool AlterarUsuario(string loginAtual, string senhaAtual,Usuario usuarioModificado)
        {
            try
            {
                Usuario usuarioAntigo = db.Usuarios.Single(p => p.U_LOGIN == loginAtual && p.U_SENHA == senhaAtual);

                if(usuarioModificado.U_NOME != null)
                {
                    usuarioAntigo.U_NOME = usuarioModificado.U_NOME;
                }
                if (usuarioModificado.U_LOGIN != null)
                {
                    usuarioAntigo.U_LOGIN = usuarioModificado.U_LOGIN;
                } 
                if (usuarioModificado.U_EMAIL != null)
                {
                    usuarioAntigo.U_EMAIL = usuarioModificado.U_EMAIL;
                } 
                if (usuarioModificado.U_SENHA != null)
                {
                    usuarioAntigo.U_SENHA = usuarioModificado.U_EMAIL;
                }

                db.SubmitChanges();
                return true;

            }
            catch (Exception)
            {
                throw;
            }          
        }

        public bool CriarUsuario(Usuario novoUsuario)
        {
            try
            {
                db.Usuarios.InsertOnSubmit(novoUsuario);
                db.SubmitChanges();
                return true;
            }
            catch (Exception)
            {
                throw;
            }
        }

        public List<UserRankEntity> GetUsersRank(int nivelDificuldade)
        {
            try
            {
                var usersRank = from user in db.Usuarios
                                from hist in db.Historico_Questaos
                                from userp in db.Usuario_Partidas
                                from partida in db.Partidas
                                where user.U_ID == userp.U_ID
                                   && partida.P_ID == hist.P_ID
                                   && partida.P_ID == userp.P_ID
                                   && partida.P_NIVEL_DIFICULDADE == nivelDificuldade
                                select new
                                {
                                    user.U_NOME,
                                    user.U_EMAIL,
                                    hist.H_QTD_ACERTO
                                };

                List<UserRankEntity> ranksList = new List<UserRankEntity>();

                foreach (var user in usersRank)
                {
                    UserRankEntity userRank = new UserRankEntity();
                    userRank.Nome = user.U_NOME;

                    if (user.H_QTD_ACERTO != null)
                        userRank.Pontos = user.H_QTD_ACERTO;
                    else
                        userRank.Pontos = 0;

                    userRank.Email = user.U_EMAIL;

                    ranksList.Add(userRank);
                }
                return ranksList;

            }
            catch (Exception)
            {
                throw;
            }
        }

        public List<Usuario> GetUsers()
        {
            try
            {
                var users = from user in db.Usuarios
                                select user;

                return users.ToList();
            }
            catch (Exception)
            {
                throw;
            }
        }

    }

}
