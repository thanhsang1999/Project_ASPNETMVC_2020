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
    }
}