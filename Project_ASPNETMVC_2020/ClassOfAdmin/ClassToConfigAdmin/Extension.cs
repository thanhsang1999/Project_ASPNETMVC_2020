using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Mvc;
using System.Web.Mvc.Ajax;
using System.Web.UI;

namespace Project_ASPNETMVC_2020.ClassOfAdmin.ClassToConfigAdmin
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
    }
}