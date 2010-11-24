using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net.Mail;
using System.Net;
using System.Text;

using CIFacade.Facade;
using CIDao;

namespace WebServiceAcess.WebService
{
    public class WebServiceUtil
    {

        public void EnviarSenhaToEmail(string toEmail)
        {
            try
            {
                Usuario usuario = new UsuarioFacade().RecuperarUsuario(toEmail);

                StringBuilder emailBody = new StringBuilder();
                emailBody.Append(" A senha cadastrada para este email é: ");
                emailBody.Append(usuario.U_SENHA);

                var fromAddress = new MailAddress("codeinspectorx@gmail.com", "CodeInspector");
                var toAddress = new MailAddress(toEmail, usuario.U_NOME);
                const string fromPassword = "nomorenations";
                const string subject = "Recuperção de senha do CodeInspector";
                string body = emailBody.ToString();

                var smtp = new SmtpClient
                           {
                               Host = "smtp.gmail.com",
                               Port = 587,
                               EnableSsl = true,
                               DeliveryMethod = SmtpDeliveryMethod.Network,
                               UseDefaultCredentials = false,
                               Credentials = new NetworkCredential(fromAddress.Address, fromPassword)
                           };
                using (var message = new MailMessage(fromAddress, toAddress)
                        {
                            Subject = subject,
                            Body = body
                        })
                {
                    smtp.Send(message);
                }
            }
            catch(Exception ex)
            {
                throw ex;
            }
        }
    }
}