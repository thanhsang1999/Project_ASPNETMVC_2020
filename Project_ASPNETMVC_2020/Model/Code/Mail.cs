using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Security.Policy;
using System.Web;

namespace Project_ASPNETMVC_2020.Model.Code
{
    public class Mail
    {
        public static bool sendMail(string emailClient, string key)
        {
            try
            {
                MailAddress addressFrom = new MailAddress("ongdinh6@gmail.com", "Blue");
                MailAddress addressTo = new MailAddress(emailClient);
                MailMessage message = new MailMessage(addressFrom, addressTo);
                message.Subject = "Sending Email with HTML Body";
                string htmlString = "<b> this is bold text!</b>";
                message.IsBodyHtml = true;
                message.Body = htmlString;
                SmtpClient client = new SmtpClient();
                client.Host = "smtp.gmail.com";
                client.Port = 587;
                client.EnableSsl = true;
                client.Credentials = new System.Net.NetworkCredential("ongdinh6@gmail.com", "kzrgcynldwhekzpb");
                client.Send(message);
                return true;
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
                return false;
            }
        }
    }
}