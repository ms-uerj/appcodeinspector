using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace CIDao.Domain
{
    public class Questao_TrechoDefeitoEntity
    {
        public int Q_TD_ID { get; set; }
        public int Q_ID { get; set; }
        public int TD_ID { get; set; }
        public int respondido { get; set; }
    }
}
