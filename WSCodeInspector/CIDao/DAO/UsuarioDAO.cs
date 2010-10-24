using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace CIDao.DAO
{
    public class UsuarioDAO
    {

        private CodeInspectorDataContext db= new CodeInspectorDataContext();

        public bool AtenticarUsuario(string login, string senha)
        {
            try
            {
                var usuario = (from u in db.Usuarios
                               where u.Login == login && u.Senha == senha
                               select u).Count();

                return Convert.ToBoolean(usuario);
            }
            catch (Exception)
            {
                throw ;
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
            try
            {


                var usersRank = from user in db.Usuarios
                                from hist in db.HistoricoUsuarios
                                from quest in db.Questaos
                                where user.IdUsuario == hist.IdHistorico 
                                   && user.IdUsuario == quest.IdQuestao
                                   && quest.NivelDificuldade == nivelDificuldade

                               select new
                                {
                                    user.Nome,
                                    user.Email,
                                    hist.QtdAcertos,
                                    hist.QtdErros,
                                    
                                };

                return ToDataTable(db, usersRank);

            }
            catch (Exception)
            {
                throw;
            }
        }


        /// <summary>
        /// Converter a variável dinamica em um DataTable
        /// </summary>
        /// <param name="ctx">DataContext do Banco</param>
        /// <param name="query">Variável dinamica</param>
        /// <returns>Um Datatable</returns>
        public DataTable ToDataTable(System.Data.Linq.DataContext ctx, object query)
        {
            if (query == null)
            {
                throw new ArgumentNullException("query");
            }

            IDbCommand cmd = ctx.GetCommand(query as IQueryable);
            SqlDataAdapter adapter = new SqlDataAdapter();
            adapter.SelectCommand = (SqlCommand)cmd;
            DataTable dt = new DataTable("sd");

            try
            {
                cmd.Connection.Open();
                adapter.FillSchema(dt, SchemaType.Source);
                adapter.Fill(dt);
            }
            finally
            {
                cmd.Connection.Close();
            }
            return dt;
        }

    }

}
