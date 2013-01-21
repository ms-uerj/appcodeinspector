using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;

namespace CIDao.Domain
{
    public class QuestaoEntity
    {
        public int Q_ID { get; set; }
        public int? Q_Nivel_Dificuldade { get; set; }
        public String Q_XML{ get; set; }
        public int Q_TEMPO { get; set; }
        public String Q_nome { get; set; }
        public ItemTaxonomiaEntity itemTax { get; set; }
        public List<ItemTaxonomiaEntity> itemTaxList{ get; set; }

    }
}
