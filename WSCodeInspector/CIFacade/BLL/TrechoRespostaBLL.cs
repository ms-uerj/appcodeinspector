using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CIDao.DAO;
using CIDao.Domain;

namespace InspectorXBLL.BLL
{
    public class TrechoRespostaBLL
    {
        public void setTrechoResposta(List<TrechoRespostaEntity> trechoResposta,int user_id,int partida_id,long duracao)
        {
            new TrechoRespostaDAO().setTrechoResposta(trechoResposta, partida_id, user_id, duracao);
        }

        public List<TrechoRespostaEntity> getTrechoRespostas(int usuario_id, int partida_id, int questao_id)
        {
            return new TrechoRespostaDAO().getTrechoRespostas(usuario_id, partida_id, questao_id);
        }

        public List<TrechoRespostaEntity> getTrechosArtefato(int questao_id, int partida_id)
        {
            return new TrechoRespostaDAO().getTrechosArtefato(questao_id, partida_id);
        }

        public void setTrechoRespostaAval(string trecho,int q_id,int it_id, int partida_id,int pontos)
        {
             new TrechoRespostaDAO().setTrechoRespostaAval( trecho, q_id, it_id,  partida_id, pontos);
        }
    }
}
