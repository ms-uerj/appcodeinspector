using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using CIFacade.Facade;
using System.Data;
using System.Xml.Linq;
using CIDao;
using CIDao.Domain;

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
        public void EncerrarPartida2(int nivelDificuldade, string respostasXML, string userEmail)
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
                    //if ((item.inicioErro == questao._InicioErro) && (item.fimErro == questao._FimErro) && (item.motivoErroId == questao.MotivoErroId))
                    //{
                    //    qtdPontos++;
                    //}
                }
                else
                {
                    if ((item.motivoErroId == questao.MotivoErroId))
                    {
                        qtdPontos++;
                    }
                }
            }

            //new PartidaFacade().iniciarPartida(qtdPontos, nivelDificuldade, userEmail);

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
        public List<QuestaoEntity> GetQuestoesTaxList(int tax_id)
        {
            return new QuestaoFacade().GetQuestoesTaxList(tax_id);
        }

        [WebMethod]
        public List<int?> GetQuestoesRespostas(int nivelDificuldade)
        {
            var retorno = new QuestaoFacade().GetQuestoesRespostas(nivelDificuldade);
            return retorno;
        }

        [WebMethod]
        public bool InserirTaxonomia(string nome)
        {
            return new TaxonomiaFacade().AdicionarTaxonomia(nome);
        }

        [WebMethod]
        public TaxonomiaEntity PegarTaxonomia(string nome)
        {
            return new TaxonomiaFacade().GetTaxonomia(nome);
        }

        [WebMethod]
        public List<TaxonomiaEntity> PegarTaxonomias()
        {
            return new TaxonomiaFacade().GetTaxonomiasList();
        }

        [WebMethod]
        public bool DeletarTaxonomias(int taxonomia)
        {
            return new TaxonomiaFacade().DeletarTaxonomia(taxonomia);
        }

        [WebMethod]
        public List<ItemTaxonomiaEntity> PegarItemsTaxonomia(int taxonomia_id)
        {
            return new ItemTaxonomiaFacade().GetItemsTaxonomiaList(taxonomia_id);
        }

        [WebMethod]
        public bool AdicionarItemTaxonomia(int taxonomia_id, string nome, string descricao)

        {
            return new ItemTaxonomiaFacade().AdicionarItemTaxonomia(taxonomia_id, nome, descricao);
        }

        [WebMethod]
        public bool DeletarItemTaxonomia(int taxonomia_id)
        {
            return new ItemTaxonomiaFacade().DeletarItemTaxonomia(taxonomia_id);
        }

        [WebMethod]
        public void AdicionarQuestao(QuestaoEntity questao, List<TrechoDefeitoEntity> tdList)
        {
            new QuestaoFacade().AdicionarQuestao(questao, tdList);
        }

        [WebMethod]
        public int IniciarPartida(int partDificuldade,string userLogin)
        {
            return new PartidaFacade().iniciarPartida(partDificuldade,userLogin);
        }

        [WebMethod]
        public void EncerrarPartida(int partidaEncerrada_id, int pontuacaoTotal)
        {
            new PartidaFacade().encerrarPartida(partidaEncerrada_id,pontuacaoTotal);
        }

        [WebMethod]
        public List<TrechoDefeitoEntity> GetTrechosDefeito(int questao_id)
        {
            return new TrechoDefeitoFacade().GetTrechosDefeitoList(questao_id);
        }

        [WebMethod]
        public List<QuestaoEntity> GetQuestoes(int nivelDificuldade, int taxonomia_id)
        {
            return new QuestaoFacade().GetQuestoes(nivelDificuldade, taxonomia_id);
        }

        [WebMethod]
        public ItemTaxonomiaEntity GetTDResposta(int td_id)
        {
            return new TrechoDefeitoFacade().getTrechoDefeitoResposta(td_id);
        }

        [WebMethod]
        public bool setQuestaoAcerto(int questao_id, int partidada_id, int pontos)
        {
            return new QuestaoFacade().setQuestaoAcerto(questao_id, partidada_id, pontos);
        }

        [WebMethod]
        public List<TipoArtefatoEntity> getTiposArtefatos()
        {
            return new TipoArtefatoFacade().GetTiposArtefatos();
        }

        [WebMethod]
        public bool setRealacaoTaxonomia(int taxId, int tipoArtId)
        {
            return new TipoArtefatoFacade().SetRealacaoTaxonomia(taxId, tipoArtId);
        }

        [WebMethod]
        public List<TrechoDefeitoEntity> getTrechosDefeitoList(int itemTaxonomiaId)
        {
            return new TrechoDefeitoFacade().getTrechosDefeitoList(itemTaxonomiaId);
        }

        [WebMethod]
        public TipoArtefatoEntity getTipoArtefato(int taxId)
        {
            return new TipoArtefatoFacade().getTipoArtefato(taxId);
        }

        [WebMethod]
        public List<QuestaoEntity> GetQuestoesByType(int nivelDificuldade, int tipoArtefatoId)
        {
            return new QuestaoFacade().GetQuestoesByType(nivelDificuldade, tipoArtefatoId);
        }

        [WebMethod]
        public TaxonomiaEntity GetTaxonomia(int tipoArtefatoId)
        {
            return new TaxonomiaFacade().GetTaxonomia(tipoArtefatoId);
        }

    }
}
