using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Project_ASPNETMVC_2020.Model.ModelOfSession
{
    public class UserLogin
    {
        [Required]
        public string UNAME { get; set; }
        [Required]
        public string PASS { get; set; }

    }
}