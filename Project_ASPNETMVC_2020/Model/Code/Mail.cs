using Project_ASPNETMVC_2020.ClassToConfig;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.Web;


namespace Project_ASPNETMVC_2020.Model.Code
{
    public class Mail
    {
        Random random = new Random();
        public  bool  sendMail(string emailClient, string key)
        {
            try
            {
                string email = "ongdinh6@gmail.com".Trim();
                string password = "ongdinh6@.com".Trim();
                var msg = new MailMessage();
                msg.From = new MailAddress(email,"Blue");
                msg.To.Add(new MailAddress(emailClient));
                msg.Subject = "Quên mật khẩu";
                string htmlString = "<a href="+new Link().linkShowPassword(key)+">Bấm vào đây để lấy mật khẩu của bạn</a>";
                msg.IsBodyHtml = true;
                msg.Body = htmlString;
               
                var smtp = new SmtpClient
                {
                    Host = "smtp.gmail.com",
                    Port = 587,
                    EnableSsl = true,
                    DeliveryMethod = SmtpDeliveryMethod.Network,
                    UseDefaultCredentials = false,
                    Credentials = new NetworkCredential(email, password)
                };
                smtp.Send(msg);
                return true;
            }
            catch (Exception ex)
            {

                return false;
            }
        }
     
        public string RandomPassword()
        {
            var passwordBuilder = new StringBuilder();

            // 4-Letters lower case   
            passwordBuilder.Append(RandomString(5, true));

            // 4-Digits between 1000 and 9999  
            passwordBuilder.Append(RandomNumber(1000, 9999));

            // 2-Letters upper case  
            passwordBuilder.Append(RandomString(5));
            passwordBuilder.Append(RandomString(5, true));
            passwordBuilder.Append(RandomString(5));
            passwordBuilder.Append(RandomNumber(1000, 9999));
            return passwordBuilder.ToString();
        }

        public int RandomNumber(int min, int max)
        {
            return random.Next(min, max);
        }

        public string RandomString(int size, bool lowerCase = false)
        {
            var builder = new StringBuilder(size);

          
            char offset = lowerCase ? 'a' : 'A';
            const int lettersOffset = 26;

            for (var i = 0; i < size; i++)
            {
                var @char = (char)random.Next(offset, offset + lettersOffset);
                builder.Append(@char);
            }

            return lowerCase ? builder.ToString().ToLower() : builder.ToString();
        }
        
    }
}