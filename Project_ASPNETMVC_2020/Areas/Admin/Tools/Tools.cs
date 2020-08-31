using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;

namespace Project_ASPNETMVC_2020.Areas.Admin.Tools
{
    public static class Tools
    {
        public static bool checkNull(string tocheck)
        {
            if (String.IsNullOrEmpty(tocheck) || String.IsNullOrWhiteSpace(tocheck) || String.Empty.Equals(tocheck) || tocheck.Equals(""))
            {
                return false;
            }
            else
            {
                return true;
            }
        }
        public static bool checkNum(string tocheck)
        {
            try
            {
                int check = Convert.ToInt32(tocheck);
                return true;
            }
            catch (Exception e)
            {
                return false;
            }
        }
        public static bool checkNumList(List<string> tocheck)
        {
            foreach (string word in tocheck)
            {
                if (checkNum(word) == false)
                {
                    return false;
                }
            }
            return true;
        }
        public static bool checkNullList(List<string> tocheck)
        {
            foreach (string word in tocheck)
            {
                if (checkNull(word) == false)
                {
                    return false;
                }
            }
            return true;
        }
        public static bool checkFileNull(List<HttpPostedFileBase> files)
        {
            foreach(HttpPostedFileBase file in files)
            {
                if (file == null && file.ContentLength <= 0)
                {
                    return false;
                }
            }
            return true;
        }
        public static string DecodeUrlString(string url)
        {
            string newUrl;
            while ((newUrl = Uri.UnescapeDataString(url)) != url)
                url = newUrl;
            return newUrl;
        }
        public static string ExtractText(string html)
        {
            Regex reg = new Regex("<[^>]+>", RegexOptions.IgnoreCase);
            string s = reg.Replace(html, " ");
            s = HttpUtility.HtmlDecode(s);
            return s;
        }

    }
}