using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using CIFacade.Facade;
using System.Data;
using System.Xml.Linq;

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
        /// 
        /// </summary>
        /// <param name="nivelDificuldade"></param>
        /// <param name="pontuacaoTotal"></param>
        /// <param name="userEmail"></param>
        [WebMethod]
        public void EncerrarPartida(int nivelDificuldade,string respostasXML,string userEmail)
        {
            XDocument doc = XDocument.Parse(respostasXML);
            List<RespostaModel> respostas = (from xnode in doc.Element("r").Elements("resposta")
                                   select new RespostaModel
                                   {
                                       inicioErro = int.Parse(xnode.Attribute("inicioErro").Value),
                                       fimErro = int.Parse(xnode.Attribute("fimErro").Value),
                                       motivoErroId = int.Parse(xnode.Attribute("motivoErroId").Value),
                                       perguntaNumero = int.Parse(xnode.Attribute("perguntaNumero").Value)
                                   }).ToList();

            var questoes = new QuestaoFacade().GetQuestoesList(nivelDificuldade);
            int qtdPontos = 0;
            foreach (var item in respostas)
            {
                var questao = questoes[item.perguntaNumero];
                if (nivelDificuldade != 1)
                {
                    if ((item.inicioErro == questao._InicioErro) && (item.fimErro == questao._FimErro) && (item.motivoErroId == questao.MotivoErroId))
                    {
                        qtdPontos++;
                    }
                }
                else
                {
                    if ((item.motivoErroId == questao.MotivoErroId))
                    {
                        qtdPontos++;
                    } 
                }
            }

            new PartidaFacade().EncerrarPartida(qtdPontos, nivelDificuldade, userEmail);
            
        }
        
        /// <summary>
        /// 
        /// </summary>
        /// <param name="email"></param>
        [WebMethod]
        public void RecuperarSenha(string email)
        {
            new WebServiceUtil().EnviarSenhaToEmail(email);
        }

        /// <summary>
        /// Altera informações do usuário
        /// </summary>
        /// <param name="loginAtual">Login atual do usuário</param>
        /// <param name="senhaAtual">Senha atual do usuário</param>
        /// <param name="novoNome">Novo nome desejado</param>
        /// <param name="novoLogin">Novo login desejado</param>
        /// <param name="novaSenha">Nova senha desejada</param>
        /// <param name="novoEmail">Novo email desejado</param>
        /// <returns>Um boleano de confirmação de sucesso</returns>
        [WebMethod]
        public bool AlterarUsuario(string loginAtual, string senhaAtual, string novoNome, string novoLogin, string novaSenha, string novoEmail)
        {
            return new UsuarioFacade().AlterarUsuario(loginAtual, senhaAtual, novoNome, novoLogin, novaSenha, novoEmail);
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
        public List<string> GetQuestoes(int nivelDificuldade)
        {
            var retorno = new QuestaoFacade().GetQuestoesXML(nivelDificuldade);
            return  retorno;
        }

        [WebMethod]
        public List<int?> GetQuestoesRespostas(int nivelDificuldade)
        {
            var retorno = new QuestaoFacade().GetQuestoesRespostas(nivelDificuldade);
            return retorno;
        }

        /// <summary>
        /// Recupera um objeto do tipo datatable de usuarios com nome, email , quantidade de acertos e erros, o objeto
        /// está ordenado pela quantidade de acertos
        /// </summary>
        /// <param name="nivelDificuldade">Nivel de dificuladade do usuario atual</param>
        /// <returns>Datatable ordenado pela quantidade de acertos</returns>
        [WebMethod]
        public List<CIDao.RankRetorno> GetUsersRank(int nivelDificuldade)
        {
            return new UsuarioFacade().GetUsersRank(nivelDificuldade);
        }

    }
}
