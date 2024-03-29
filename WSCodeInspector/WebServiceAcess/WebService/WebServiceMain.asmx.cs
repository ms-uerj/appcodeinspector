﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using InspectorXBLL.BLL;
using System.Data;
using System.Xml.Linq;
using CIDao;
using CIDao.Domain;

namespace WebServiceAcess.WebService
{
    /// <summary>
    /// Este serviço é serviço web da aplicação InspectorX
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    public class WebServiceMain : System.Web.Services.WebService
    {

        /// <summary>
        /// Verificar se o usuário já está cadastrado no banco.  
        /// </summary>
        /// <param name="login"></param>
        /// <param name="senha"></param>
        /// <returns>True caso o usuario seja cadastrado</returns>
        [WebMethod]
        public UsuarioEntity AutenticarUsuario(string login, string senha)
        {
            return new UsuarioBLL().AutenticarUsuario(login, senha);
        }

        /// <summary>
        /// Envia email para o destinatário com a senha do usuario referente ao email.
        /// </summary>
        /// <param name="email"></param>
        [WebMethod]
        public bool RecuperarSenha(string email)
        {
            return new WebServiceUtil().EnviarSenhaToEmail(email);
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
            return new UsuarioBLL().AlterarUsuario(loginAtual, senhaAtual, novoNome, novoLogin, novaSenha, novoEmail);
        }

        /// <summary>
        /// Método para criação de usuários
        /// </summary>
        /// <returns>Falso ou verdadeiro dependendo do sucesso</returns>
        [WebMethod]
        public bool CriarUsuario(string nome, string login, string email, string senha)
        {
            return new UsuarioBLL().CriarUsuario(nome, login, email, senha);
        }

        [WebMethod]
        public int inserirUsuarioTipoIfDontExist(int usuarioID, String usuarioTipo)
        {
            return new UsuarioBLL().inserirUsuarioTipoIfDontExist(usuarioID, usuarioTipo);
        }

        [WebMethod]
        public List<QuestaoEntity> GetQuestoesTaxList(int tax_id)
        {
            return new QuestaoBLL().GetQuestoesTaxList(tax_id);
        }

        [WebMethod]
        public List<int?> GetQuestoesRespostas(int nivelDificuldade)
        {
            var retorno = new QuestaoBLL().GetQuestoesRespostas(nivelDificuldade);
            return retorno;
        }

        [WebMethod]
        public bool InserirTaxonomia(string nome)
        {
            return new TaxonomiaBLL().AdicionarTaxonomia(nome);
        }

        [WebMethod]
        public TaxonomiaEntity PegarTaxonomia(string nome)
        {
            return new TaxonomiaBLL().GetTaxonomia(nome);
        }

        [WebMethod]
        public List<TaxonomiaEntity> PegarTaxonomias()
        {
            return new TaxonomiaBLL().GetTaxonomiasList();
        }

        [WebMethod]
        public bool DeletarTaxonomias(int taxonomia)
        {
            return new TaxonomiaBLL().DeletarTaxonomia(taxonomia);
        }

        [WebMethod]
        public List<ItemTaxonomiaEntity> PegarItemsTaxonomia(int taxonomia_id)
        {
            return new ItemTaxonomiaBLL().GetItemsTaxonomiaList(taxonomia_id);
        }

        [WebMethod]
        public bool AdicionarItemTaxonomia(int taxonomia_id, string nome, string descricao)

        {
            return new ItemTaxonomiaBLL().AdicionarItemTaxonomia(taxonomia_id, nome, descricao);
        }

        [WebMethod]
        public bool DeletarItemTaxonomia(int taxonomia_id)
        {
            return new ItemTaxonomiaBLL().DeletarItemTaxonomia(taxonomia_id);
        }

        [WebMethod]
        public void AdicionarQuestao(QuestaoEntity questao, List<TrechoDefeitoEntity> tdList)
        {
            new QuestaoBLL().AdicionarQuestao(questao, tdList);
        }

        [WebMethod]
        public int IniciarPartida(int partDificuldade,int userTipoId,string tipoJogo)
        {
            return new PartidaBLL().iniciarPartida(partDificuldade, userTipoId, tipoJogo);
        }

        [WebMethod]
        public void EncerrarPartida(int partidaEncerrada_id, int pontuacaoTotal)
        {
            new PartidaBLL().encerrarPartida(partidaEncerrada_id,pontuacaoTotal);
        }

        [WebMethod]
        public List<TrechoDefeitoEntity> GetTrechosDefeito(int questao_id)
        {
            return new TrechoDefeitoBLL().GetTrechosDefeitoList(questao_id);
        }

        [WebMethod]
        public List<QuestaoEntity> GetQuestoes(int nivelDificuldade, int taxonomia_id)
        {
            return new QuestaoBLL().GetQuestoes(nivelDificuldade, taxonomia_id);
        }

        [WebMethod]
        public List<QuestaoEntity> GetTodasQuestoes()
        {
            return new QuestaoBLL().GetTodasQuestoes();
        }

        [WebMethod]
        public List<QuestaoEntity> getArtefatos(int partida_id)
        {
            return new QuestaoBLL().getArtefatos(partida_id);
        }

        [WebMethod]
        public List<QuestaoEntity> getArtefatosPendentes(int usuario_id, int partida_id)
        {
            return new QuestaoBLL().getArtefatosPendentes(usuario_id, partida_id);
        }

        [WebMethod]
        public ItemTaxonomiaEntity GetTDResposta(int td_id)
        {
            return new TrechoDefeitoBLL().getTrechoDefeitoResposta(td_id);
        }

        [WebMethod]
        public bool setQuestaoAcerto(int questao_id, int partidada_id, int pontos)
        {
            return new QuestaoBLL().setQuestaoAcerto(questao_id, partidada_id, pontos);
        }

        [WebMethod]
        public bool setQuestaoAvaliada(int questao_id, int partidada_id, int pontos)
        {
            return new QuestaoBLL().setQuestaoAvaliada(questao_id, partidada_id, pontos);
        }

        [WebMethod]
        public void updateInicioQuestao(int questaoId, int partidaId)
        {
            new QuestaoBLL().updateInicioQuestao(questaoId, partidaId);
        }

        [WebMethod]
        public void setUpdateQuestaoAcerto(int questaoId, int partidaId, int pontos)
        {
            new QuestaoBLL().setUpdateQuestaoAcerto(questaoId, partidaId, pontos);
        }

        [WebMethod]
        public void setArtefatoPartida(int[] artefato_id, int partidada_id)
        {
            new QuestaoBLL().setArtefatoPartida(artefato_id, partidada_id);
        }

        [WebMethod]
        public List<TipoArtefatoEntity> getTiposArtefatos()
        {
            return new TipoArtefatoBLL().GetTiposArtefatos();
        }

        [WebMethod]
        public bool setRealacaoTaxonomia(int taxId, int tipoArtId)
        {
            return new TipoArtefatoBLL().SetRealacaoTaxonomia(taxId, tipoArtId);
        }

        [WebMethod]
        public List<TrechoDefeitoEntity> getTrechosDefeitoList(int itemTaxonomiaId)
        {
            return new TrechoDefeitoBLL().getTrechosDefeitoList(itemTaxonomiaId);
        }

        [WebMethod]
        public TipoArtefatoEntity getTipoArtefato(int taxId)
        {
            return new TipoArtefatoBLL().getTipoArtefato(taxId);
        }

        [WebMethod]
        public List<QuestaoEntity> GetTodasQuestoesByUser(int userTipoId, int nivelDificuldade)
        {
            return new QuestaoBLL().GetTodasQuestoesByUser(userTipoId, nivelDificuldade);
        }

        [WebMethod]
        public List<QuestaoEntity> GetQuestoesByType(int userTipoId, int nivelDificuldade, int tipoArtefatoId)
        {
            return new QuestaoBLL().GetQuestoesByType(userTipoId, nivelDificuldade, tipoArtefatoId);
        }

        [WebMethod]
        public List<QuestaoEntity> GetQuestoesByNivel(int nivelDificuldade)
        {
            return new QuestaoBLL().GetQuestoesByNivel(nivelDificuldade);
        }


        [WebMethod]
        public TaxonomiaEntity GetTaxonomia(int tipoArtefatoId)
        {
            return new TaxonomiaBLL().GetTaxonomia(tipoArtefatoId);
        }

        [WebMethod]
        public TaxonomiaEntity GetQuestaoTaxonomia(int questaoId)
        {
            return new TaxonomiaBLL().GetQuestaoTaxonomia(questaoId);
        }

        [WebMethod]
        public List<UserRankEntity> GetUsersRank(int nivelDificuldade)
        {
            return new UsuarioBLL().GetUsersRank(nivelDificuldade);
        }

        [WebMethod]
        public List<UsuarioEntity> getUsers(int id, string nome, string email, string login, string tipo)
        {
            return new UsuarioBLL().getUsuarios(id, nome, email,login, tipo);
        }

        [WebMethod]
        public List<UsuarioEntity> getUsersByArtefato(int artefoId)
        {
            return new UsuarioBLL().getUsuarios(artefoId);
        }

        [WebMethod]
        public List<UsuarioEntity> getUsuariosByPartida(int partidaId)
        {
            return new UsuarioBLL().getUsuariosByPartida(partidaId);
        }

        [WebMethod]
        public List<UsuarioEntity> getTodosUsers(int userTID)
        {
            return new UsuarioBLL().getTodosUsuariosFI(userTID);
        }

        [WebMethod]
        public List<UsuarioEntity> getUsuariosTipoInspetor()
        {
            return new UsuarioBLL().getUsuariosTipoInspetor();
        }

        [WebMethod]
        public List<PartidaEntity> getPartidas(int usuarioTId)
        {
            return new PartidaBLL().getPartidas(usuarioTId);
        }

        [WebMethod]
        public List<PartidaEntity> getPartidasInspector(int usuarioId)
        {
            return new PartidaBLL().getPartidasInspector(usuarioId);
        }

        [WebMethod]
        public void relacionarUsrPartida(List<int> userTid, int partidaId)
        {
            new PartidaBLL().relacionarUsrPartida(userTid.ToArray(), partidaId);
        }

        [WebMethod]
        public void removerrUsrPartida(int userTid, int partidaId)
        {
            new PartidaBLL().removerUsrPartida(userTid, partidaId);
        }

        [WebMethod]
        public void removerFullInspectPartida(int partidaId)
        {
            new PartidaBLL().removerFullInspectPartida(partidaId);
        }

        [WebMethod]
        public bool DeletarQuestao(int questaoId)
        {
            return new QuestaoBLL().DeletarQuestao(questaoId);
        }

        [WebMethod]
        public bool removerPartidaQuestao(int questao_id, int partidada_id)
        {
            return new QuestaoBLL().removerPartidaQuestao(questao_id, partidada_id);
        }

        [WebMethod]
        public PartidaEntity criarPartida(int partDificuldade, string tipoJogo)
        {
            return new PartidaBLL().criarPartida(partDificuldade, tipoJogo);
        }

        [WebMethod]
        public void setTrechoResposta(List<TrechoRespostaEntity> trechoResposta, int partida_id, int user_id,long duracao)
        {
            new TrechoRespostaBLL().setTrechoResposta(trechoResposta, partida_id, user_id, duracao);
        }

        [WebMethod]
        public List<TrechoRespostaEntity> getTrechoRespostas(int usuario_id, int partida_id, int questao_id)
        {
            return new TrechoRespostaBLL().getTrechoRespostas(usuario_id, partida_id, questao_id);
        }

        [WebMethod]
        public List<QuestaoEntity> getArtefatosInspecionados(int usuarioPartida_id, int partida_id)
        {
            return new QuestaoBLL().getArtefatosInspecionados(usuarioPartida_id, partida_id);
        }

        [WebMethod]
        public List<QuestaoEntity> GetQuestoesTrechos(int partida_id)
        {
            return new QuestaoBLL().GetQuestoesTrechos(partida_id);
        }

        [WebMethod]
        public List<TrechoRespostaEntity> getTrechosArtefato(int questao_id, int partida_id)
        {
            return new TrechoRespostaBLL().getTrechosArtefato(questao_id, partida_id);
        }

        [WebMethod]
        public List<UsuarioEntity> getUsuarioByTrecho(string trecho, int it_id, int partida_id)
        {
            return new UsuarioBLL().getUsuarioByTrecho(trecho, it_id, partida_id);
        }

        [WebMethod]
        public void setTrechoRespostaAval(string trecho, int q_id, int it_id, int partida_id, int pontos)
        {
            new TrechoRespostaBLL().setTrechoRespostaAval( trecho, q_id, it_id,  partida_id, pontos);
        }
    }
}
