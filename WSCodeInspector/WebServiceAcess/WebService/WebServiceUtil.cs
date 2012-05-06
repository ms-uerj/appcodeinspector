using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net.Mail;
using System.Net;
using System.Text;

using InspectorXBLL.BLL;
using CIDao;

namespace WebServiceAcess.WebService
{
    public class WebServiceUtil
    {

        public bool EnviarSenhaToEmail(string toEmail)
        {
            try
            {
                Usuario usuario = new UsuarioBLL().RecuperarUsuario(toEmail);

                StringBuilder emailBody = new StringBuilder();
                emailBody.Append("A senha cadastrada para este email é: ");
                emailBody.Append(usuario.U_SENHA);
                emailBody.Append(Environment.NewLine+ Environment.NewLine+"Muito obrigado por usar o jogar o InspectorX.");
                emailBody.Append(Environment.NewLine+"http://inspectorx.linksysnet.com:8080/codeinspector/appcodeinspector.html"); 

                var fromAddress = new MailAddress("inspectorX.game@gmail.com", "InspectorX");
                var toAddress = new MailAddress(toEmail, usuario.U_NOME);
                const string fromPassword = "vegnagun";
                const string subject = "Recuperção de senha do InspectorX";
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
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }
    }
}