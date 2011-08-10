﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace CIDao.DAO
{
    public class UsuarioDAO : DAOTools
    {

        private InspectorXDBDataContext db = new InspectorXDBDataContext();

        public bool AtenticarUsuario(string login, string senha)
        {
            try
            {
                var usuario = (from user in db.Usuarios
                               where user.U_LOGIN == login && user.U_SENHA == senha
                               select user).Count();

                return Convert.ToBoolean(usuario);
            }
            catch (Exception)
            {
                throw ;
            }
        }

        public Usuario RecuperarUsuario(string email)
        {
            try
            {

                Usuario usuario = db.Usuarios.Single(p => p.U_EMAIL == email);

                return usuario;
            }
            catch (Exception)
            {
                throw;
            }
        }

        public bool AlterarUsuario(string loginAtual, string senhaAtual,Usuario usuarioModificado)
        {
            
            try
            {

                Usuario usuarioAntigo = db.Usuarios.Single(p => p.U_LOGIN == loginAtual && p.U_SENHA == senhaAtual);

                if(usuarioModificado.U_NOME != null)
                {
                    usuarioAntigo.U_NOME = usuarioModificado.U_NOME;
                }
                if (usuarioModificado.U_LOGIN != null)
                {
                    usuarioAntigo.U_LOGIN = usuarioModificado.U_LOGIN;
                } 
                if (usuarioModificado.U_EMAIL != null)
                {
                    usuarioAntigo.U_EMAIL = usuarioModificado.U_EMAIL;
                } 
                if (usuarioModificado.U_SENHA != null)
                {
                    usuarioAntigo.U_SENHA = usuarioModificado.U_EMAIL;
                }

                db.SubmitChanges();
                return true;

            }
            catch (Exception)
            {
                throw;
            }
          
        }

        public bool CriarUsuario(Usuario novoUsuario, string email, string senha)
        {
            if (AtenticarUsuario(email, senha) == false)

                try
                {

                    db.Usuarios.InsertOnSubmit(novoUsuario);
                    db.SubmitChanges();
                    return true;

                }
                catch (Exception)
                {
                    throw;
                }

            else return false;

        }

        //public List<RankRetorno> GetUsersRank(int nivelDificuldade)
        //{
        //    //TODO -Selecionar corretamente o rank dos usuarios-
        //    try
        //    {

        //        var user = from partida in db.Partidas
        //                   where partida.P_NIVEL_DIFICULDADE == nivelDificuldade
        //                   select partida;

        //        //var usersRank = from user in db.Usuarios
        //        //                from hist in db.Historico_Questaos
        //        //                from partida in db.Partidas
        //        //                from quest in db.Questaos
        //        //                where user.U_ID == partida.U_ID
        //        //                   && partida.P_ID == hist.P_ID
        //        //                   && partida.P_NIVEL_DIFICULDADE == nivelDificuldade
        //        //                orderby partida.P_PONTUACAO_TOTAL
        //        //               select new
        //        //                {
        //        //                    user.U_NOME,
        //        //                    user.U_EMAIL,
        //        //                    partida.P_PONTUACAO_TOTAL
        //        //                };

        //        List<RankRetorno> ranksList = new List<RankRetorno>();

        //        foreach (var item in user)
        //        {
        //            ranksList.Add(new RankRetorno(){ Usuario = item.Usuario.U_NOME,Email = item.Usuario.U_EMAIL, Pontuacao = (int)item.P_PONTUACAO_TOTAL});
        //        }
        //        return ranksList;

        //    }
        //    catch (Exception)
        //    {
        //        throw;
        //    }
        //}

    }

}
