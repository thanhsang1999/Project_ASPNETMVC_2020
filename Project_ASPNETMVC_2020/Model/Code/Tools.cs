using System;
using System.Text;
using System.Text.RegularExpressions;

namespace Project_ASPNETMVC_2020.Model.Code
{
    public static class Tools
    {
        public static bool IsValidEmail(string email)
        {
            try
            {
                var addr = new System.Net.Mail.MailAddress(email);
                return addr.Address == email;
            }
            catch
            {
                return false;
            }
        }
        public static bool IsNumberPhone(string phone)
        {
            return Regex.Match(phone, @"(03|07|08|09|01[2|6|8|9])+([0-9]{8})\b").Success;
        }
        public static string MD5(string input)
        {
            using (System.Security.Cryptography.MD5 md5 = System.Security.Cryptography.MD5.Create())
            {
                byte[] inputBytes = System.Text.Encoding.ASCII.GetBytes(input);
                byte[] hashBytes = md5.ComputeHash(inputBytes);
                StringBuilder sb = new StringBuilder();
                for (int i = 0; i < hashBytes.Length; i++)
                {
                    sb.Append(hashBytes[i].ToString("X2"));
                }
                return sb.ToString();
            }
        }

        public static DateTime? toDateTime(string ngaySinh)
        {
            int day = int.Parse(ngaySinh.Substring(0, 2));
            int month = int.Parse(ngaySinh.Substring(3, 2));
            int year = int.Parse(ngaySinh.Substring(6, 4));
            return new DateTime(year, month, day);
        }
    }
}