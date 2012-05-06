using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace CIDao.Domain
{
    public class UsuarioEntity
    {
        public int U_ID { get; set; }
        public string U_NOME { get; set; }
        public string U_EMAIL { get; set; }
        public string U_SENHA { get; set; }
        public string U_LOGIN { get; set; }
        public string U_TIPO { get; set; }

        public UsuarioEntity(int id,string nome,string email, string senha, string login,string tipo)
        {
            U_ID = id;
            U_NOME = nome;
            U_EMAIL = email;
            U_SENHA = senha;
            U_LOGIN =login;
            U_TIPO = tipo;
        }

        public UsuarioEntity()
        {

        }
    }
}
