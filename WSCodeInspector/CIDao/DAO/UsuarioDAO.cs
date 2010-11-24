using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace CIDao.DAO
{
    public class UsuarioDAO : DAOTools
    {

        private CILinqDataContext db = new CILinqDataContext();

        public bool AtenticarUsuario(string login, string senha)
        {
            try
            {
                var usuario = (from user in db.Usuarios
                               where user.U_LOGIN == login && user.U_SENHA == senha
                               select user).Count();

                return Convert.ToBoolean(usuario);
            }
            catch (Exception)
            {
                throw ;
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
                //var usuario = (from user in db.Usuarios
                //               where user.U_LOGIN == loginAtual && user.U_SENHA == senhaAtual
                //               select user);

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

        public bool CriarUsuario(Usuario novoUsuario, string email, string senha)
        {
            if (AtenticarUsuario(email, senha) == false)

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

            else return false;

        }

        public DataTable GetUsersRank(int nivelDificuldade)
        {
            //TODO -Selecionar corretamente o rank dos usuarios-
            try
            {

                
                var usersRank = from user in db.Usuarios
                                from hist in db.Historico_Questaos
                                from partida in db.Partidas
                                from quest in db.Questaos
                                where user.U_ID == partida.U_ID
                                   && partida.P_ID == hist.P_ID
                                   && partida.P_NIVEL_DIFICULDADE == nivelDificuldade

                               select new
                                {
                                    user.U_NOME,
                                    user.U_EMAIL,
                                    hist.H_QTD_ACERTO,
                                    hist.H_QTD_ERRO,
                                    
                                };

                return ToDataTable(db, usersRank);

            }
            catch (Exception)
            {
                throw;
            }
        }

    }

}
