using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Project_ASPNETMVC_2020.Areas.Admin.Model.Form
{
    public class FormProduct
    {
        
        public string nameproduct { get; set; }
        public string hedieuhanh { get; set; }
        public string brand { get; set; }
        public string memory { get; set; }
        public string ram { get; set; }
        public string price { get; set; }
        public string amount { get; set; }
        public string salerate { get; set; }
        public string description { get; set; } 
        public HttpPostedFileBase image1 { get; set; }
        public HttpPostedFileBase image2 { get; set; }
        public HttpPostedFileBase image3 { get; set; }


    }
}