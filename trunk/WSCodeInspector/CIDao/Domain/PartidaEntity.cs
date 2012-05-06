using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace CIDao.Domain
{
    public class PartidaEntity
    {

        public int P_ID { get; set; }
        public int U_ID { get; set; }
        public DateTime? P_DATA { get; set; }
        public int? P_NIVEL_DIFICULDADE { get; set; }
        public int? P_PONTUACAO_TOTAL { get; set; }
        public string P_JOGO_MODO { get; set; }

        public string toString()
        {
            return "Partida" + P_ID;
        }

    }
}
