using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using CIDao.Domain;

namespace CIDao.DAO
{
    public class QuestaoDAO : DAOTools
    {

        private InspectorXDBDataContext db = new InspectorXDBDataContext();

        public List<QuestaoEntity> GetTodasQuestoes()
        {
            var questoes = (from q in db.Questaos
                            select q).Distinct();

            List<QuestaoEntity> questoesEn = new List<QuestaoEntity>();
            List<Questao> questaL = questoes.ToList();

            foreach (Questao item in questoes)
            {
                QuestaoEntity qe = new QuestaoEntity();
                qe.Q_ID = item.Q_ID;
                qe.Q_Nivel_Dificuldade = item.Q_NIVEL_DIFICULDADE;
                qe.Q_XML = item.Q_XML;
                qe.Q_nome = item.Q_Nome;
                questoesEn.Add(qe);
            }

            return questoesEn;
        }

        public List<QuestaoEntity> GetQuestoesByNivel(int nivelDificuldade)
        {
            var questoes = from q in db.Questaos
                           where q.Q_NIVEL_DIFICULDADE == nivelDificuldade
                           select q;

            List<QuestaoEntity> questoesEn = new List<QuestaoEntity>();
            List<Questao> questaL = questoes.ToList();

            foreach (Questao item in questoes)
            {
                QuestaoEntity qe = new QuestaoEntity();
                qe.Q_ID = item.Q_ID;
                qe.Q_Nivel_Dificuldade = item.Q_NIVEL_DIFICULDADE;
                qe.Q_XML = item.Q_XML;
                qe.Q_nome = item.Q_Nome;
                questoesEn.Add(qe);
            }

            return questoesEn;
        }

        public List<QuestaoEntity> GetQuestoes(int nivelDificuldade,int taxonomia_id)
        {
            var questoes = (from q in db.Questaos
                           from it in db.ItemTaxonomias
                           from td in db.TrechoDefeitos
                           from qtd in db.Questao_TrechoDefeitos
                           where q.Q_NIVEL_DIFICULDADE == nivelDificuldade
                           && it.T_ID==taxonomia_id
                           && it.IT_ID==td.IT_ID
                           && td.D_ID==qtd.TD_id
                           && q.Q_ID==qtd.Q_id
                           select q).Distinct();

            List<QuestaoEntity> questoesEn = new List<QuestaoEntity>();
            List<Questao> questaL = questoes.ToList();

            foreach (Questao item in questoes)
            {
                QuestaoEntity qe = new QuestaoEntity();
                qe.Q_ID = item.Q_ID;
                qe.Q_Nivel_Dificuldade = item.Q_NIVEL_DIFICULDADE;
                qe.Q_XML = item.Q_XML;
                qe.Q_nome = item.Q_Nome;
                questoesEn.Add(qe);
            }

            return questoesEn;
        }

        public List<QuestaoEntity> GetQuestoesByType(int usuarioId,int nivelDificuldade, int tipoArtefatoId)
        {


            var questoesFeitas = (from questoesdb in db.Questaos
                                   from itemtax in db.ItemTaxonomias
                                   from trechoDef in db.TrechoDefeitos
                                   from qtd in db.Questao_TrechoDefeitos
                                   from taxonomia in db.Taxonomias
                                   from tipoArtef_Tax in db.TipoArtefato_Taxonomias
                                   from up in db.Usuario_Partidas
                                   from p in db.Partidas
                                   from hq in db.Historico_Questaos
                                   where 
                                      tipoArtef_Tax.TA_ID == tipoArtefatoId
                                   && tipoArtef_Tax.T_ID == taxonomia.T_ID
                                   && itemtax.T_ID == taxonomia.T_ID
                                   && itemtax.IT_ID == trechoDef.IT_ID
                                   && trechoDef.D_ID == qtd.TD_id
                                   && questoesdb.Q_ID == qtd.Q_id
                                   && up.U_ID == usuarioId
                                   && p.P_ID == up.P_ID
                                   && p.P_ID == hq.P_ID
                                   && hq.Q_ID == questoesdb.Q_ID
                                   select questoesdb).Distinct();

            var questoesErradas = (from questoesdb in questoesFeitas
                                   from hq in db.Historico_Questaos
                                   where
                                      hq.Q_ID == questoesdb.Q_ID
                                   && hq.H_QTD_ACERTO == 0
                                   select questoesdb).Distinct();

            var questoesNFeitas = (from questoesdb in db.Questaos
                                   from itemtax in db.ItemTaxonomias
                                   from trechoDef in db.TrechoDefeitos
                                   from qtd in db.Questao_TrechoDefeitos
                                   from taxonomia in db.Taxonomias
                                   from tipoArtef_Tax in db.TipoArtefato_Taxonomias
                                   where 
                                      tipoArtef_Tax.TA_ID == tipoArtefatoId
                                   && tipoArtef_Tax.T_ID == taxonomia.T_ID
                                   && itemtax.T_ID == taxonomia.T_ID
                                   && itemtax.IT_ID == trechoDef.IT_ID
                                   && trechoDef.D_ID == qtd.TD_id
                                   && questoesdb.Q_ID == qtd.Q_id
                                   && questoesdb.Q_NIVEL_DIFICULDADE == nivelDificuldade
                                   select questoesdb).Except(questoesFeitas);

            var questoes = questoesNFeitas.Concat(questoesErradas);

            List<QuestaoEntity> questoesEn = new List<QuestaoEntity>();
            List<Questao> questaL = questoes.ToList();

            foreach (Questao item in questoes)
            {
                QuestaoEntity qe = new QuestaoEntity();
                qe.Q_ID = item.Q_ID;
                qe.Q_Nivel_Dificuldade = item.Q_NIVEL_DIFICULDADE;
                qe.Q_XML = item.Q_XML;
                qe.Q_nome = item.Q_Nome;
                questoesEn.Add(qe);
            }

            return questoesEn;
        }

        public List<QuestaoEntity> GetTodasQuestoesByUser(int usuarioId, int nivelDificuldade)
        {
            var questoesFeitasErradas = (from q in db.Questaos
                                         from up in db.Usuario_Partidas
                                         from p in db.Partidas
                                         from hq in db.Historico_Questaos
                                         where up.U_ID == usuarioId
                                         && up.P_ID == p.P_ID
                                         && p.P_ID == hq.P_ID
                                         && hq.Q_ID == q.Q_ID
                                         && hq.H_QTD_ACERTO == 0
                                         && q.Q_NIVEL_DIFICULDADE == nivelDificuldade
                                         select q).Distinct();

            var questoesNFeitas = (from qe in db.Questaos
                                   select qe).Except(from q in db.Questaos
                                                     from up in db.Usuario_Partidas
                                                     from p in db.Partidas
                                                     from hq in db.Historico_Questaos
                                                     where up.U_ID == usuarioId
                                                     && up.P_ID == p.P_ID
                                                     && p.P_ID == hq.P_ID
                                                     && hq.Q_ID == q.Q_ID
                                                     && q.Q_NIVEL_DIFICULDADE == nivelDificuldade
                                                     select q);

            var questoes = questoesNFeitas.Concat(questoesFeitasErradas);

            List<QuestaoEntity> questoesEn = new List<QuestaoEntity>();
            List<Questao> questaL = questoes.ToList();

            foreach (Questao item in questoes)
            {
                QuestaoEntity qe = new QuestaoEntity();
                qe.Q_ID = item.Q_ID;
                qe.Q_Nivel_Dificuldade = item.Q_NIVEL_DIFICULDADE;
                qe.Q_XML = item.Q_XML;
                qe.Q_nome = item.Q_Nome;
                questoesEn.Add(qe);
            }

            return questoesEn;
        }

        //Depricated
        public List<int?> GetQuestoesRespostas(int nivelDificuldade)
        {
            var questoes = from q in db.Questaos
                           where q.Q_ID == nivelDificuldade
                           select q.MotivoErroId;

            //List<Questao> questoes = questoesLinq.ToList();

            return questoes.ToList();
        }

        public List<Questao> GetQuestoesList(int nivelDificuldade)
        {
            var questoes = from q in db.Questaos
                           where q.Q_NIVEL_DIFICULDADE == nivelDificuldade
                           select q;

            return questoes.ToList();
        }

        public List<QuestaoEntity> GetQuestoesTaxList(int tax_id)
        {
            var questoes = (from q in db.Questaos
                            from q_td in db.Questao_TrechoDefeitos
                            from td in db.TrechoDefeitos
                            from it in db.ItemTaxonomias
                            from t in db.Taxonomias
                            where q.Q_ID == q_td.Q_id
                            && q_td.Q_TD_id == td.D_ID
                            && td.IT_ID == it.IT_ID
                            && it.T_ID == t.T_ID
                            && t.T_ID==tax_id
                            select q).Distinct();

            List<Questao> questList = questoes.ToList();
            List<QuestaoEntity> questEnList = new List<QuestaoEntity>();

            foreach (Questao item in questList)
            {
                QuestaoEntity questEn = new QuestaoEntity();
                questEn.Q_ID = item.Q_ID;
                questEn.Q_Nivel_Dificuldade = item.Q_NIVEL_DIFICULDADE;
                questEn.Q_nome = item.Q_Nome;
                questEn.Q_XML = item.Q_XML;

                questEnList.Add(questEn);
            }

            return questEnList;
        }

        public void setTrechoQuestaoAcerto(int questaoId,int trechoDfeitoId)
        {
            
        }

        /// <summary>
        /// Adiciona uma nova questão com defeitos já definidos
        /// </summary>
        /// <param name="novaQuestao"></param>
        /// <param name="tdList"></param>
        public void AdicionarQuestao(QuestaoEntity novaQuestao,List<TrechoDefeitoEntity> tdList)
        {
            try
            {

                Questao questao = new Questao();

                questao.Q_ID = novaQuestao.Q_ID;
                questao.Q_NIVEL_DIFICULDADE = novaQuestao.Q_Nivel_Dificuldade;
                questao.Q_XML = novaQuestao.Q_XML;
                questao.Q_Nome = novaQuestao.Q_nome;

                foreach (TrechoDefeitoEntity tde in tdList)
                {
                    Questao_TrechoDefeito q_td = new Questao_TrechoDefeito();
                    q_td.Questao = questao;

                    TrechoDefeito td = new TrechoDefeito();
                    td.D_ID = tde.D_ID;
                    td.IT_ID = tde.IT_ID;
                    td.D_Conteudo = tde.Conteudo;
                    td.D_Explicacao = tde.Explicacao;

                    q_td.TrechoDefeito = td;
                    db.Questao_TrechoDefeitos.InsertOnSubmit(q_td);
                }


                db.SubmitChanges();

            }
            catch (Exception)
            {
                throw;
            }
        }

        /// <summary>
        /// Adiciona uma nova questão
        /// </summary>
        /// <param name="novaQuestao"></param>
        /// <param name="tdList"></param>
        public void AdicionarQuestao(Questao novaQuestao)
        {
            try
            {
                db.Questaos.InsertOnSubmit(novaQuestao);
                db.SubmitChanges();

            }
            catch (Exception)
            {
                throw;
            }
        }

        public bool setQuestaoAcerto(int questao_id,  int partidada_id, int pontos)
        {

            try
            {
                Historico_Questao hq = new Historico_Questao();
                hq.H_QTD_ACERTO = pontos;
                hq.Q_ID = questao_id;
                hq.P_ID = partidada_id;

                db.Historico_Questaos.InsertOnSubmit(hq);

                db.SubmitChanges();
                return true;
            }
            catch (Exception)
            {
                throw;
            }
        }

        public void setArtefatoPartida(int[] artefato_id, int partidada_id)
        {

            try
            {
                for (int i = 0; i < artefato_id.Length; i++)
                {
                    Historico_Questao hq = new Historico_Questao();
                    hq.Q_ID = artefato_id[i];
                    hq.P_ID = partidada_id;

                    db.Historico_Questaos.InsertOnSubmit(hq);
                }
                db.SubmitChanges();

            }
            catch (Exception)
            {
                throw;
            }
        }

        public List<QuestaoEntity> getArtefatos(int partida_id)
        {

            try
            {
                var questoes = (from q in db.Questaos
                                from hq in db.Historico_Questaos
                                where q.Q_ID == hq.Q_ID
                                && hq.P_ID== partida_id
                                select q).Distinct();

                List<Questao> questList = questoes.ToList();
                List<QuestaoEntity> questEnList = new List<QuestaoEntity>();

                foreach (Questao item in questList)
                {
                    QuestaoEntity questEn = new QuestaoEntity();
                    questEn.Q_ID = item.Q_ID;
                    questEn.Q_Nivel_Dificuldade = item.Q_NIVEL_DIFICULDADE;
                    questEn.Q_nome = item.Q_Nome;
                    questEn.Q_XML = item.Q_XML;

                    questEnList.Add(questEn);
                }

                return questEnList;

            }
            catch (Exception)
            {
                throw;
            }
        }

        public List<QuestaoEntity> getArtefatosPendentes(int usuario_id,int partida_id)
        {

            try
            {
                var questoes = (from q in db.Questaos
                                from hq in db.Historico_Questaos
                                from u in db.Usuarios
                                from tr in db.Trecho_Respostas
                                where q.Q_ID == hq.Q_ID
                                && tr.Q_ID == q.Q_ID
                                && u.U_ID != tr.U_ID
                                && hq.P_ID == partida_id
                                select q).Distinct();

                List<Questao> questList = questoes.ToList();
                List<QuestaoEntity> questEnList = new List<QuestaoEntity>();

                foreach (Questao item in questList)
                {
                    QuestaoEntity questEn = new QuestaoEntity();
                    questEn.Q_ID = item.Q_ID;
                    questEn.Q_Nivel_Dificuldade = item.Q_NIVEL_DIFICULDADE;
                    questEn.Q_nome = item.Q_Nome;
                    questEn.Q_XML = item.Q_XML;

                    questEnList.Add(questEn);
                }

                return questEnList;

            }
            catch (Exception)
            {
                throw;
            }
        }


        public bool removerPartidaQuestao(int questao_id, int partidada_id)
        {
            try
            {
                Historico_Questao historicoQ = db.Historico_Questaos.Single(hq=>hq.P_ID==partidada_id && hq.Q_ID==questao_id);
                db.Historico_Questaos.DeleteOnSubmit(historicoQ);

                db.SubmitChanges();
                return true;

            }
            catch (Exception)
            {
                throw;
            }
        }

        public bool DeletarQuestao (int questaoId)
        {
            try
            {
                var questoesTrechos = from q_td in db.Questao_TrechoDefeitos
                                      from td in db.TrechoDefeitos
                                      where q_td.Q_id == questaoId
                                      && q_td.Q_TD_id == td.D_ID
                                      select q_td;

                foreach (Questao_TrechoDefeito qtd in questoesTrechos.ToList())
                {
                    db.Questao_TrechoDefeitos.DeleteOnSubmit(qtd);
                }


                var trechosDefeitos = from q_td in db.Questao_TrechoDefeitos
                                      from td in db.TrechoDefeitos
                                      where q_td.Q_id == questaoId
                                      && q_td.Q_TD_id == td.D_ID
                                      select td;

                foreach (TrechoDefeito td in trechosDefeitos.ToList())
                {
                    db.TrechoDefeitos.DeleteOnSubmit(td);
                }

                var historicoQuestao = from hq in db.Historico_Questaos
                                       where hq.Q_ID == questaoId
                                       select hq;

                foreach (Historico_Questao hq in historicoQuestao.ToList())
                {
                    db.Historico_Questaos.DeleteOnSubmit(hq);
                }

                Questao q = db.Questaos.Single(quetao => quetao.Q_ID == questaoId);

                db.Questaos.DeleteOnSubmit(q);

                db.SubmitChanges();


                return true;

            }
            catch (Exception)
            {
                throw;
            }
        }

        public bool AlterarQuestao(int questao_id, Questao questaoModificada)
        {

            try
            {

                Questao QuestaoAntiga = db.Questaos.Single(q => q.Q_ID == questao_id);

                if (questaoModificada.Q_NIVEL_DIFICULDADE != null)
                {
                    QuestaoAntiga.Q_NIVEL_DIFICULDADE = questaoModificada.Q_NIVEL_DIFICULDADE;
                }
                if (questaoModificada.Q_XML != null)
                {
                    QuestaoAntiga.Q_XML = questaoModificada.Q_XML;
                }
                if (questaoModificada.Q_TEMPO != null)
                {
                    QuestaoAntiga.Q_TEMPO = questaoModificada.Q_TEMPO;
                }
                if (questaoModificada.MotivoErroId != null)
                {
                    QuestaoAntiga.MotivoErroId = questaoModificada.MotivoErroId;
                }

                db.SubmitChanges();
                return true;

            }
            catch (Exception)
            {
                throw;
            }
        }

    }
}
