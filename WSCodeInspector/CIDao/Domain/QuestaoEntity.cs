using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace CIDao.Domain
{
    public class QuestaoEntity
    {
        public int Q_ID { get; set; }
        public int? Q_Nivel_Dificuldade { get; set; }
        public String Q_XML{ get; set; }
        public int Q_TEMPO { get; set; }
        public String Q_nome { get; set; }


    }
}
