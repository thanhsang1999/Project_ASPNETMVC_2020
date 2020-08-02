using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Mvc;
using System.Web.UI;

namespace Project_ASPNETMVC_2020.ClassToConfig
{
    public class Link
    {

        public Link()
        {

        }
        public static string correctUrlImg(string url)
        {
            url = url.Substring(0, url.Length - 3);
            url += "jpg";
            return url;
        }
        //thay doi localhost cho giong
        public static string linkForListProduct(string catogery, string id)
        {
            String rs = "";
            rs += "https://localhost:44360/Product/ShowListProduct?catogery=" + catogery + "&id=" + id;
            return rs;
        }
        public static string linkForListProductWithPage(string catogery, string id, int page)
        {
            String rs = "";
            if(catogery.Equals("") || id.Equals(""))
            {
                rs += "https://localhost:44360/Product/ShowListProduct?"+"page=" + page;

            }
            else
            {
                rs += "https://localhost:44360/Product/ShowListProduct?catogery=" + catogery + "&id=" + id + "&page=" + page;
            }
            return rs;
        }
        




    }
}