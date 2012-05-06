using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace CIDao.Domain
{
    public class TrechoRespostaEntity
    {
        public int TR_ID { get; set; }
        public int? U_ID { get; set; }
        public int? Q_ID { get; set; }
        public int? IT_ID { get; set; }
        public string TRECHO_RESPOSTA { get; set; }
        public ItemTaxonomiaEntity TR_ItemTaxonomia { get; set; }
    }
}
