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
        public bool setTrechoResposta(List<TrechoRespostaEntity> trechoResposta)
        {
            return new TrechoRespostaDAO().setTrechoResposta(trechoResposta);
        }

        public List<TrechoRespostaEntity> getTrechoRespostas(int usuario_id, int partida_id, int questao_id)
        {
            return new TrechoRespostaDAO().getTrechoRespostas(usuario_id, partida_id, questao_id);
        }

    }
}
