using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Project_ASPNETMVC_2020.Areas.Admin.ClassToConfig
{
    public static class LinkAdmin
    {
        public static string linkForListProductAdmin(int page)
        {
            String rs = "";
            rs += "https://localhost:44360/Admin/Product/ListProduct?" + "page=" + page;
            return rs;
        }
        public static string linkForProductDetailAdmin(string id)
        {
            String rs = "";
            rs += "https://localhost:44360/Product/ProductDetail/" + id;
            return rs;
        }
    }
}