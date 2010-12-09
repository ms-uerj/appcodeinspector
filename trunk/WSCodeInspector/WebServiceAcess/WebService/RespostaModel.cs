using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace WebServiceAcess.WebService
{
    public class RespostaModel
    {
        public int inicioErro { get; set; }
        public int fimErro { get; set; }
        public int motivoErroId { get; set; }
        public int perguntaNumero { get; set; }
    }
}
