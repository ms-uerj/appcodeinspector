using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using CIFacade.Facade;
using System.Data;

namespace WebServiceAcess.WebService
{
    /// <summary>
    /// Summary description for WebServiceMain
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class WebServiceMain : System.Web.Services.WebService
    {

        /// <summary>
        /// Verificar se o usuário já está cadastrado no banco.  
        /// </summary>
        /// <param name="login"></param>
        /// <param name="senha"></param>
        /// <returns>True caso o usuario seja cadastrado</returns>
        [WebMethod]
        public bool AutenticarUsuario(string login, string senha)
        {
            return new UsuarioFacade().AutenticarUsuario(login, senha);
        }

        /// <summary>
        /// Método para criação de usuários
        /// </summary>
        /// <returns>Falso ou verdadeiro dependendo do sucesso</returns>
        [WebMethod]
        public bool CriarUsuario(string nome, string login, string email, string senha)
        {
            return new UsuarioFacade().CriarUsuario(nome, login, email, senha);
        }

        [WebMethod]
         public void AdicionarQuestao(int nivelDificuladade, string xmlQuestao, int? tempo)
        {
            new QuestaoFacade().AdicionarQuestao(nivelDificuladade,xmlQuestao,tempo);
        }

        /// <summary>
        /// Recupera as questões baseada em um nível de dificuldade
        /// </summary>
        /// <param name="nivelDificuldade">Nível das questões a ser procurados</param>
        /// <returns>Uma string com todas as questoes do mesmo nível</returns>
        [WebMethod]
        public DataTable GetQuestoes(int nivelDificuldade)
        {
            return new QuestaoFacade().GetQuestoes(nivelDificuldade);
        }

        /// <summary>
        /// Recupera um objeto do tipo datatable de usuarios com nome, email , quantidade de acertos e erros, o objeto
        /// está ordenado pela quantidade de acertos
        /// </summary>
        /// <param name="nivelDificuldade">Nivel de dificuladade do usuario atual</param>
        /// <returns>Datatable ordenado pela quantidade de acertos</returns>
        [WebMethod]
        public DataTable GetUsersRank(int nivelDificuldade)
        {
            return new UsuarioFacade().GetUsersRank(nivelDificuldade);
        }

    }
}
