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

        public int inserirUsuarioTipoIfDontExist(int usuarioID,String usuarioTipo)
        {
            Usuario_Tipo userHasType = db.Usuario_Tipos.SingleOrDefault(ut=> ut.U_ID==usuarioID && usuarioTipo.Trim()==ut.UT_TIPO);

            if (userHasType==null)
            {
	            Usuario_Tipo userTipo = new Usuario_Tipo();
	            userTipo.U_ID = usuarioID;
	            userTipo.UT_TIPO = usuarioTipo;

                db.Usuario_Tipos.InsertOnSubmit(userTipo);
                db.SubmitChanges();

                return userTipo.UT_ID;
            }
            return userHasType.UT_ID;
        }

        public List<UsuarioEntity> getTodosUsuariosFI(int userTID)
        {
            var usuarios = (from user in db.Usuarios
                           from userT in db.Usuario_Tipos
                           where userT.UT_TIPO == PartidaModoEnum.FULLINSPECTION
                           && user.U_ID == userT.U_ID
                           && userTID != userT.UT_ID
                           select new
                           {
                               user.U_NOME,
                               user.U_EMAIL,
                               user.U_LOGIN,
                               user.U_SENHA,
                               user.U_TIPO,
                               userT.UT_ID
                            }).Distinct();


            List<UsuarioEntity> userEntityList = new List<UsuarioEntity>();

            if (usuarios!= null)
            {
                foreach (var u in usuarios)
                {
                    UsuarioEntity userEntity = new UsuarioEntity(u.UT_ID, u.U_NOME, u.U_EMAIL, u.U_SENHA, u.U_LOGIN, u.U_TIPO);
                    userEntityList.Add(userEntity);
                }
            }

            return userEntityList;
        }

        public List<UsuarioEntity> getUsuariosTipoInspetor()
        {
            var usuarios = from user in db.Usuarios
                           from userT in db.Usuario_Tipos
                           where user.U_ID == userT.U_ID
                           && userT.UT_TIPO == UsuarioTipoEnum.INSPETOR
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
                            from ut in db.Usuario_Tipos
                            where user.U_ID == ut.U_ID
                            && ut.UT_ID == up.UT_ID
                            && up.UP_TIPO== UsuarioTipoEnum.INSPETOR
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

                int fake1 = inserirUsuarioTipoIfDontExist(novoUsuario.U_ID,PartidaModoEnum.DEFECTCRAWLER);
                int fake2 = inserirUsuarioTipoIfDontExist(novoUsuario.U_ID,PartidaModoEnum.FULLINSPECTION);

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
                                from usert in db.Usuario_Tipos
                                from partida in db.Partidas
                                where user.U_ID == usert.U_ID
                                   && usert.UT_ID == userp.UT_ID
                                   && userp.P_ID == partida.P_ID
                                   && partida.P_ID == hist.P_ID
                                   && partida.P_ID == userp.P_ID
                                   && userp.UP_TIPO != UsuarioTipoEnum.MODERADOR
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

        public List<UserDetails> GetUsersDetails(int nivel)
        {
            try
            {
                var usersRank = from user in db.Usuarios
                                from hist in db.Historico_Questaos
                                from q in db.Questaos
                                from userp in db.Usuario_Partidas
                                from usert in db.Usuario_Tipos
                                from partida in db.Partidas
                                where user.U_ID == usert.U_ID
                                   && usert.UT_ID == userp.UT_ID
                                   && userp.P_ID == partida.P_ID
                                   && partida.P_ID == hist.P_ID
                                   && q.Q_ID == hist.Q_ID
                                   && q.Q_NIVEL_DIFICULDADE == nivel
                                   && partida.P_ID == userp.P_ID
                                   && userp.UP_TIPO ==  PartidaModoEnum.DEFECTCRAWLER
                                select new
                                {
                                    user.U_NOME,
                                    user.U_EMAIL,
                                    hist.Q_ID,
                                    q.Q_NIVEL_DIFICULDADE,
                                    hist.H_QTD_ACERTO,
                                    hist.H_QUESTAO_INICIO,
                                    hist.H_QUESTAO_FIM
                                };

                List<UserDetails> userDList = new List<UserDetails>();

                foreach (var user in usersRank)
                {
                    UserDetails userD = new UserDetails();
                    userD.Nome = user.U_NOME;
                    userD.Qid = user.Q_ID;

                    if (user.H_QUESTAO_INICIO!=null)
                        userD.QInicio = ((DateTime)user.H_QUESTAO_INICIO).Ticks;
                    userD.QInicioD = user.H_QUESTAO_INICIO;


                    if (user.H_QUESTAO_FIM != null)
                        userD.QFim = ((DateTime)user.H_QUESTAO_FIM).Ticks;
                    userD.QFimD = user.H_QUESTAO_FIM;

                    userD.QNivel = user.Q_NIVEL_DIFICULDADE;

                    if (user.H_QTD_ACERTO != null)
                        userD.Pontos = user.H_QTD_ACERTO;
                    else
                        userD.Pontos = 0;

                    userD.Email = user.U_EMAIL;

                    userDList.Add(userD);
                }

                return userDList;
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
