using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using CIDao.Domain;
using CIDao.DAO;

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
            if (nivelDificuldade <= 3)
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
            else
            {
                var questoes = from q in db.Questaos
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

        public List<QuestaoEntity> GetQuestoesByType(int userTipoId, int nivelDificuldade, int tipoArtefatoId)
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
                                   && questoesdb.Q_NIVEL_DIFICULDADE == nivelDificuldade
                                   && up.UT_ID == userTipoId
                                   && p.P_ID == up.P_ID
                                   && p.P_ID == hq.P_ID
                                   && up.UP_TIPO == PartidaModoEnum.DEFECTCRAWLER
                                   && hq.Q_ID == questoesdb.Q_ID
                                   select questoesdb).Distinct();

            var questoesCorretas = (
                                   from itemtax in db.ItemTaxonomias
                                   from trechoDef in db.TrechoDefeitos
                                   from qtd in db.Questao_TrechoDefeitos
                                   from taxonomia in db.Taxonomias
                                   from tipoArtef_Tax in db.TipoArtefato_Taxonomias
                                   from q in db.Questaos
                                   from hq in db.Historico_Questaos
                                   from up in db.Usuario_Partidas
                                   from p in db.Partidas
                                   where 
                                      tipoArtef_Tax.TA_ID == tipoArtefatoId
                                   && tipoArtef_Tax.T_ID == taxonomia.T_ID
                                   && itemtax.T_ID == taxonomia.T_ID
                                   && itemtax.IT_ID == trechoDef.IT_ID
                                   && trechoDef.D_ID == qtd.TD_id
                                   && q.Q_ID == qtd.Q_id
                                   && hq.Q_ID == q.Q_ID
                                   && hq.P_ID == p.P_ID
                                   && p.P_ID == up.P_ID
                                   && up.UP_TIPO == PartidaModoEnum.DEFECTCRAWLER
                                   && q.Q_NIVEL_DIFICULDADE == nivelDificuldade
                                   && up.UT_ID == userTipoId
                                   && hq.H_QTD_ACERTO == 1
                                   select q).Distinct();

            var questoesErradas = (from q in questoesFeitas
                                   from hq in db.Historico_Questaos
                                   from up in db.Usuario_Partidas
                                   from p in db.Partidas
                                   where
                                      hq.Q_ID == q.Q_ID
                                   && hq.P_ID == p.P_ID
                                   && p.P_ID == up.P_ID
                                   && up.UP_TIPO == PartidaModoEnum.DEFECTCRAWLER
                                   && q.Q_NIVEL_DIFICULDADE == nivelDificuldade
                                   && hq.H_QTD_ACERTO == 0
                                   select q).Distinct().Except(questoesCorretas);

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

        public List<QuestaoEntity> GetTodasQuestoesByUser(int userTipoId, int nivelDificuldade)
        {
            var questoesFeitasErradas = (from q in db.Questaos
                                         from up in db.Usuario_Partidas
                                         from p in db.Partidas
                                         from hq in db.Historico_Questaos
                                         where up.UT_ID == userTipoId
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
                                                     where up.UT_ID == userTipoId
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

        public List<QuestaoEntity> GetQuestoesTrechos(int partida_id)
        {
            var questoesComTrechoErrado = (from q  in db.Questaos
                                           from tr in db.Trecho_Respostas
                                           from up in db.Usuario_Partidas
                                           where up.P_ID == partida_id
                                           && q.Q_ID == tr.Q_ID
                                           && tr.UP_ID == up.UP_ID
                                           && tr.TR_Pontos < 2
                                           && tr.TR_ModeradorAval == 0
                                           select q).Distinct();

            var questoesFacilCorretas =   (from q in db.Questaos
                                           from tr in db.Trecho_Respostas
                                           from up in db.Usuario_Partidas
                                           where up.P_ID == partida_id
                                           && q.Q_ID == tr.Q_ID
                                           && q.Q_NIVEL_DIFICULDADE==1
                                           && tr.UP_ID == up.UP_ID
                                           && tr.TR_Pontos == 1
                                           && tr.TR_ModeradorAval == 0
                                           select q).Distinct();

            questoesComTrechoErrado = questoesComTrechoErrado.Except(questoesFacilCorretas);


            List<QuestaoEntity> questoesEn = new List<QuestaoEntity>();
            List<Questao> questaL = questoesComTrechoErrado.ToList();

            foreach (Questao item in questaL)
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

        public void setUpdateQuestaoAcerto(int questaoId,int partidaId,int pontos)
        {
            Historico_Questao historicoQuestao = db.Historico_Questaos.SingleOrDefault(hq => hq.P_ID == partidaId && hq.Q_ID == questaoId);
            historicoQuestao.H_QTD_ACERTO = pontos;
            historicoQuestao.H_QUESTAO_FIM = DateTime.Now;
            db.SubmitChanges();
        }

        public void updateInicioQuestao(int questaoId, int partidaId)
        {

            try
            {
                Historico_Questao historicoQuestao = db.Historico_Questaos.SingleOrDefault(h_q => h_q.P_ID == partidaId && h_q.Q_ID == questaoId);

                if (historicoQuestao == null)
                {
                    Historico_Questao hq = new Historico_Questao();
                    hq.Q_ID = questaoId;
                    hq.P_ID = partidaId;
                    hq.H_QUESTAO_INICIO = DateTime.Now;

                    db.Historico_Questaos.InsertOnSubmit(hq);
                }
                else
                {
                    historicoQuestao.H_QUESTAO_INICIO = DateTime.Now;
                }

                db.SubmitChanges();
            }
            catch (Exception)
            {
                throw;
            }
        }

        public bool setQuestaoAcerto(int questaoId, int partidaId, int pontos)
        {

            try
            {
                Historico_Questao historicoQuestao = db.Historico_Questaos.SingleOrDefault(h_q => h_q.P_ID == partidaId && h_q.Q_ID == questaoId);

                if (historicoQuestao==null)
                {
	                Historico_Questao hq = new Historico_Questao();
	                hq.H_QTD_ACERTO = pontos;
	                hq.Q_ID = questaoId;
	                hq.P_ID = partidaId;
                    historicoQuestao.H_QUESTAO_FIM = DateTime.Now;
	                db.Historico_Questaos.InsertOnSubmit(hq);
                }
                else
                {
                    historicoQuestao.H_QTD_ACERTO = pontos;
                    historicoQuestao.H_QUESTAO_FIM = DateTime.Now;
                }

                db.SubmitChanges();
                return true;
            }
            catch (Exception)
            {
                throw;
            }
        }

        public bool setQuestaoAvaliada(int questaoId, int partidaId, int pontos)
        {

            try
            {
                Historico_Questao historicoQuestao = db.Historico_Questaos.SingleOrDefault(h_q => h_q.P_ID == partidaId && h_q.Q_ID == questaoId);

                //Gambiarra
                int flag = 1;

                if (historicoQuestao == null)
                {
                    Historico_Questao hq = new Historico_Questao();
                    hq.H_QTD_ERRO = flag;
                    hq.H_QTD_ACERTO = pontos;
                    hq.Q_ID = questaoId;
                    hq.P_ID = partidaId;
                    historicoQuestao.H_QUESTAO_FIM = DateTime.Now;
                    db.Historico_Questaos.InsertOnSubmit(hq);
                }
                else
                {
                    historicoQuestao.H_QTD_ERRO = flag;
                    historicoQuestao.H_QTD_ACERTO = pontos;
                    historicoQuestao.H_QUESTAO_FIM = DateTime.Now;
                }

                db.SubmitChanges();
                return true;
            }
            catch (Exception)
            {
                throw;
            }
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
                Usuario_Partida userPartida = new PartidaDAO().getUsuarioPartida(usuario_id, partida_id);

                var questoesFeitas = (from q in db.Questaos
                                      from tr in db.Trecho_Respostas
                                      where tr.UP_ID == userPartida.UP_ID
                                      && tr.Q_ID == q.Q_ID
                                      select q).Distinct();


                var questoes = (from q in db.Questaos
                                from hq in db.Historico_Questaos
                                where q.Q_ID == hq.Q_ID
                                && hq.P_ID == partida_id
                                select q).Except(questoesFeitas);

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

        public List<QuestaoEntity> getArtefatosInspecionados(int usuario_id, int partida_id)
        {
            List<QuestaoEntity> questEnList = new List<QuestaoEntity>();

            try
            {
                Usuario_Partida userPartida = new PartidaDAO().getUsuarioPartida(usuario_id,partida_id);

                if (userPartida == null)
                    return questEnList;

                var artefatosAvalCorrect = (from q in db.Questaos
                                            from hq in db.Historico_Questaos
                                            where q.Q_ID == hq.Q_ID
                                            && hq.P_ID == partida_id
                                            && hq.H_QTD_ERRO == 1
                                            && hq.H_QTD_ACERTO == 1
                                            select q).Distinct();

                var artefatosInspecionados = (from q in db.Questaos
                                              from hq in db.Historico_Questaos
                                              from tr in db.Trecho_Respostas
                                              where q.Q_ID == hq.Q_ID
                                              && hq.P_ID == partida_id
                                              && tr.Q_ID == q.Q_ID
                                              && tr.UP_ID == userPartida.UP_ID
                                              select q).Distinct().Except(artefatosAvalCorrect);



                //var artefatosAvaliados


                List<Questao> questList = artefatosInspecionados.ToList();


                foreach (Questao item in questList)
                {
                    QuestaoEntity questEn = new QuestaoEntity();
                    questEn.Q_ID = item.Q_ID;
                    questEn.Q_Nivel_Dificuldade = item.Q_NIVEL_DIFICULDADE;
                    questEn.Q_nome = item.Q_Nome;
                    questEn.Q_XML = item.Q_XML;

                    //var itemsTax = (from qt in db.Questao_TrechoDefeitos
                    //                         from d in db.TrechoDefeitos
                    //                         from it in db.ItemTaxonomias
                    //                         where qt.Q_id == item.Q_ID
                    //                         && qt.TD_id == d.D_ID
                    //                         && d.IT_ID == it.IT_ID
                    //                         select it).Distinct();

                    //if (itemTax!=null)
                    //{
                    //    ItemTaxonomiaEntity itEn = new ItemTaxonomiaEntity();
                    //    itEn.Descricao = itemTax.IT_Descricao;
                    //    itEn.ID = itemTax.IT_ID;
                    //    itEn.Nome = itemTax.IT_Nome;
                    //    itEn.T_ID = itemTax.T_ID;

                    //    questEn.itemTax = itEn;
                    //}
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

                var trechosRespostas = from tr in db.Trecho_Respostas
                                       where tr.Q_ID == questaoId
                                       select tr;

                foreach (Trecho_Resposta tr in trechosRespostas.ToList())
                {
                    db.Trecho_Respostas.DeleteOnSubmit(tr);
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
