using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
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
    }
}