using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using Database.Facade;

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
        /// <returns>Um boleano</returns>
        [WebMethod]
        public bool AutenticarUsuario(string login, string senha)
        {
            return new UsuarioFacade().AutenticarUsuario(login, senha);
        }

        public bool CriarUsuario(string nome, string login, string email, string senha)
        {
            return new UsuarioFacade().CriarUsuario(nome, login, email, senha);
        }

    }
}
