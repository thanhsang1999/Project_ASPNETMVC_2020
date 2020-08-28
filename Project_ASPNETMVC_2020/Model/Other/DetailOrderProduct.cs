using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Project_ASPNETMVC_2020.Model.Other
{
    public class DetailOrderProduct
    {
        public string ID_ORDER { get; set; }
        public string ID_PRODUCT { get; set; }
        public decimal? AMOUNT { get; set; }
        public string NAME { get; set; }
    }
}