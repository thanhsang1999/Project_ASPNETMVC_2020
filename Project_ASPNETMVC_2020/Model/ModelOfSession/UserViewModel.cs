using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Project_ASPNETMVC_2020.Model.ModelOfSession
{
    public class UserViewModel
    {
        public string ID_ACCOUNT { get; set; }
        public string USERNAME { get; set; }
        public string PASSWORD { get; set; }
        public string HO_TEN { get; set; }
        public string LEVEL { get; set; }
        public string ACTIVE { get; set; }
        public string EMAIL { get; set; }
        public string SDT { get; set; }
        public string DIA_CHI { get; set; }
        public int? GIOI_TINH { get; set; }
        public DateTime? NGAY_SINH { get; set; }
    }
}