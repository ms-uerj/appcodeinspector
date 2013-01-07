using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace CIDao.Domain
{
    public class UserDetails
    {
        public string Nome { get; set; }
        public string Email { get; set; }
        public int? Qid { get; set; }
        public int? QNivel { get; set; }
        public int? Pontos { get; set; }
        public long QInicio { get; set; }
        public long QFim { get; set; }
        public DateTime? QInicioD { get; set; }
        public DateTime? QFimD { get; set; }

    }
}
