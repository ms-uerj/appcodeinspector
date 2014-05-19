using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace CIDao.Domain
{
    public class TrechoRespostaComparer : IEqualityComparer<Trecho_Resposta>
    {
        public bool Equals(Trecho_Resposta x, Trecho_Resposta y)
        {
            return x.TR_TRECHO_SELECIONADO.Trim().Normalize().Contains(y.TR_TRECHO_SELECIONADO.Trim());
        }

        public int GetHashCode(Trecho_Resposta obj)
        {
            return obj.TR_TRECHO_SELECIONADO.GetHashCode();
        }
    }
}
