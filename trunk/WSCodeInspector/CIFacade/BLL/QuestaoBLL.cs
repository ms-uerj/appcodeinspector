using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using CIDao.DAO;
using CIDao;
using CIDao.Domain;


namespace InspectorXBLL.BLL
{
    public class QuestaoBLL
    {
        public List<QuestaoEntity> GetTodasQuestoes()
        {
            QuestaoDAO questoes = new QuestaoDAO();
            return questoes.GetTodasQuestoes();
        }
        public void updateInicioQuestao(int questaoId, int partidaId)
        {
            new QuestaoDAO().updateInicioQuestao(questaoId, partidaId);
        }

        public List<QuestaoEntity> getArtefatos(int partida_id)
        {
            return new QuestaoDAO().getArtefatos(partida_id);
        }

        public List<QuestaoEntity> getArtefatosPendentes(int usuario_id, int partida_id)
        {
            return new QuestaoDAO().getArtefatosPendentes(usuario_id, partida_id);
        }

        public List<QuestaoEntity> getArtefatosInspecionados(int usuario_id, int partida_id)
        {
            return new QuestaoDAO().getArtefatosInspecionados(usuario_id, partida_id);
        }

        public List<QuestaoEntity> GetQuestoesByNivel(int nivelDificuldade)
        {
            QuestaoDAO questoes = new QuestaoDAO();
            return questoes.GetQuestoesByNivel(nivelDificuldade);
        }

        public List<QuestaoEntity> GetQuestoes(int nivelDificuldade, int taxonomia_id)
        {
            QuestaoDAO questoes = new QuestaoDAO();
            return questoes.GetQuestoes(nivelDificuldade,taxonomia_id);
        }
        public void setUpdateQuestaoAcerto(int questaoId, int partidaId, int pontos)
        {
            new QuestaoDAO().setUpdateQuestaoAcerto(questaoId, partidaId, pontos);
        }

        public List<QuestaoEntity> GetTodasQuestoesByUser(int usuarioId, int nivelDificuldade)
        {
            QuestaoDAO questoes = new QuestaoDAO();
            List<QuestaoEntity> questaoList = questoes.GetTodasQuestoesByUser(usuarioId, nivelDificuldade);
            QuestaoUtil.Shuffle(questaoList);
            return questaoList;
        }

        public List<QuestaoEntity> GetQuestoesTrechos(int partida_id)
        {
            return new QuestaoDAO().GetQuestoesTrechos(partida_id);
        }

        public List<QuestaoEntity> GetQuestoesByType(int usuarioId,int nivelDificuldade, int tipoArtefato_id)
        {
            QuestaoDAO questoes = new QuestaoDAO();
            List<QuestaoEntity> questaoList = questoes.GetQuestoesByType(usuarioId, nivelDificuldade, tipoArtefato_id);
            QuestaoUtil.Shuffle(questaoList);
            return questaoList;
        }

        public List<int?> GetQuestoesRespostas(int nivelDificuldade)
        {
            QuestaoDAO questoes = new QuestaoDAO();

            return questoes.GetQuestoesRespostas(nivelDificuldade);
        }

        public bool setQuestaoAcerto(int questao_id, int partidada_id, int pontos)
        {
            return new QuestaoDAO().setQuestaoAcerto(questao_id, partidada_id, pontos);
        }

        public bool setQuestaoAvaliada(int questao_id, int partidada_id, int pontos)
        {
            return new QuestaoDAO().setQuestaoAvaliada(questao_id, partidada_id, pontos);
        }

        public void setArtefatoPartida(int[] artefato_id, int partidada_id)
        {
            new QuestaoDAO().setArtefatoPartida(artefato_id, partidada_id);
        }

        public bool removerPartidaQuestao(int questao_id, int partidada_id)
        {
            return new QuestaoDAO().removerPartidaQuestao(questao_id, partidada_id);
        }

        public List<Questao> GetQuestoesList(int tax_id)
        {
            QuestaoDAO questoes = new QuestaoDAO();

            return questoes.GetQuestoesList(tax_id);
            
        }

        public List<QuestaoEntity> GetQuestoesTaxList(int tax_id)
        {
            QuestaoDAO questoes = new QuestaoDAO();

            return questoes.GetQuestoesTaxList(tax_id);

        }

        public void AdicionarQuestao(int nivelDificuladade, string xmlQuestao, int? tempo)
        {

            Questao novaQuestao = new Questao();

            novaQuestao.Q_NIVEL_DIFICULDADE= nivelDificuladade;
            novaQuestao.Q_XML = xmlQuestao;
            novaQuestao.Q_TEMPO = tempo;

            new QuestaoDAO().AdicionarQuestao(novaQuestao);
        }

        public void AdicionarQuestao(QuestaoEntity novaQuestao, List<TrechoDefeitoEntity> tdList)
        {
            new QuestaoDAO().AdicionarQuestao(novaQuestao, tdList);
        }

        public bool DeletarQuestao(int questaoId)
        {
            return new QuestaoDAO().DeletarQuestao(questaoId);
        }

    }
}
