using Microsoft.Ajax.Utilities;
using Project_ASPNETMVC_2020.Model.DAO;
using Project_ASPNETMVC_2020.Model.EF;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;

namespace Project_ASPNETMVC_2020.Model.ModelOfSession
{
    public class FormSignup
    {
        public string dkUserName { get; set; }
        public string dkName { get; set; }
        public string dkEmail { get; set; }
        public string dkPass1 { get; set; }
        public string dkPass2 { get; set; }
        public static Regex regexCheckName = new Regex(
      "^(\\b[A-Za-z]*\\b\\s+\\b[A-Za-z]*\\b+\\.[A-Za-z])$",
    RegexOptions.IgnoreCase
    | RegexOptions.CultureInvariant
    | RegexOptions.IgnorePatternWhitespace
    | RegexOptions.Compiled
    );
        public string checkUserName(string username)
        {
            DBModel dbmodel = new DBModel();
            int count=dbmodel.accounts.Where(x => x.USERNAME==username).Count();
            if (count >= 1 || username.Length==0)
            {
                return "Tài khoản đã tồn tại";
            }
            else
            {
                return "";
            }
            
        }
        public string checkFullName(string name)
        {
            Regex regexCheckName2 =regexCheckName;
            if (regexCheckName.IsMatch(name)==false || name.Length==0)
            {
                return "Họ và tên không hợp lệ";
            }
            else
            {
                return "";
            }
           
        }
        public string checkEmail(string email)
        {
            String theEmailPattern = @"^[\w!#$%&'*+\-/=?\^_`{|}~]+(\.[\w!#$%&'*+\-/=?\^_`{|}~]+)*"
                                 + "@"
                                 + @"((([\-\w]+\.)+[a-zA-Z]{2,4})|(([0-9]{1,3}\.){3}[0-9]{1,3}))\z";
            if(Regex.IsMatch(email, theEmailPattern) || email.Length!=0)
            {
                return "";
            }
            else
            {
                return "Mail của bạn không hợp lệ";
            }
           
        }
        public string checkPass1(string pass)
        {
            var input = pass;

            var hasNumber = new Regex(@"[0-9]+");
            var hasUpperChar = new Regex(@"[A-Z]+");
            var hasMinimum8Chars = new Regex(@".{8,}");
            var hasLowerChar = new Regex(@"[a-z]+");
            var isValidated = hasNumber.IsMatch(input) && hasUpperChar.IsMatch(input) && hasMinimum8Chars.IsMatch(input) && hasLowerChar.IsMatch(input);

            if (isValidated == false)
            {
                return "Mật khẩu phải có ít nhất 1 ký tự thường,Hoa,số,dài 8 ký tự";
            }
            else
            {
                return "";
            }


        }
        public string checkPass2(string pass2, string pass1)
        {
            if (pass2.Equals(pass1))
            {
                return "";
            }
            else
            {
                return "Mật khẩu không trùng nhau";
            }
        }
    }
}