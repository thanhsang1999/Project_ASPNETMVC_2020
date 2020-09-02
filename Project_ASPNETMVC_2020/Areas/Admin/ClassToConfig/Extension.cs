using Project_ASPNETMVC_2020.Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Project_ASPNETMVC_2020.Areas.Admin.ClassToConfig
{
    public static class Extension
    {
        public static string ContentAssetAdmin(this UrlHelper urlHelper, string contentPath, bool toAbsolute = true)
        {
            contentPath = "~/Assets/admin/" + contentPath;
            var path = urlHelper.Content(contentPath);
            var url = new Uri(HttpContext.Current.Request.Url, path);
            return toAbsolute ? url.AbsoluteUri : path;
        }
        public static string deleteNameBrand(product p)
        {
            string rs = "";
            string name = p.NAME;
            int todel = 0;
            var words = name.Split(' ');
            for (int i = 0; i < words.Count(); i++)
            {
                if (words[i].ToUpper().Trim().Equals(p.ID_BRAND.ToUpper().Trim()))
                {
                    todel = i;
                }
            }
            for (int i = 0; i < words.Count(); i++)
            {
                if (i != todel)
                {
                    rs += words[i]+" ";
                }
            }
            rs = rs.Substring(0, rs.Length - 1);
            return rs;

        }

        public static string ContentAssetWeb(this UrlHelper urlHelper, string contentPath, bool toAbsolute = true)
        {
            contentPath = "~/Assets/web/" + contentPath;
            var path = urlHelper.Content(contentPath);
            var url = new Uri(HttpContext.Current.Request.Url, path);
            return toAbsolute ? url.AbsoluteUri : path;
        }
    }
}