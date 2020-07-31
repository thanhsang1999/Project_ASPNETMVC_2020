using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Project_ASPNETMVC_2020.ClassToConfig
{
    public static class UrlExtensions
    {
        public static string Content(this UrlHelper urlHelper, string contentPath, bool toAbsolute = true)
        {
            var path = urlHelper.Content(contentPath);
            var url = new Uri(HttpContext.Current.Request.Url, path);

            return toAbsolute ? url.AbsoluteUri : path;
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