﻿using HtmlAgilityPack;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;

namespace Project_ASPNETMVC_2020.Areas.Admin.ToolsAdmin
{
    public static class ToolsOfAdmin
    {
        public static bool checkSaleRate(string price, string salerate)
        {
            var realprice = Convert.ToInt32(price);
            var realsalerate = Convert.ToInt32(salerate);
            if (realsalerate > 0)
            {
                float temp = realprice - (realprice * ((float)realsalerate / 100));
                if (temp > 0)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            else
            {
                return true;
            }

        }
        public static bool oneWord(string tocheck)
        {
            Regex regex = new Regex("^[A-Za-z]+$");
            if (!regex.IsMatch(tocheck))
            {
                return false;
            }
            else
            {
                return true;
            }

        }
        public static string FirstCharToUpper(string input)
        {
            switch (input)
            {
                case null: throw new ArgumentNullException(nameof(input));
                case "": throw new ArgumentException($"{nameof(input)} cannot be empty", nameof(input));
                default: return input.First().ToString().ToUpper() + input.Substring(1);
            }
        }
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
            foreach (HttpPostedFileBase file in files)
            {
                if (file == null && file.ContentLength <= 0)
                {
                    return false;
                }
            }
            return true;
        }
        public static bool checkFileImage(List<HttpPostedFileBase> files)
        {
            foreach (HttpPostedFileBase file in files)
            {
                if (IsImage(file) == false)
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
            if (html == null)
            {
                throw new ArgumentNullException("html");
            }

            HtmlDocument doc = new HtmlDocument();
            doc.LoadHtml(html);

            var chunks = new List<string>();

            foreach (var item in doc.DocumentNode.DescendantNodesAndSelf())
            {
                if (item.NodeType == HtmlNodeType.Text)
                {
                    if (item.InnerText.Trim() != "")
                    {
                        chunks.Add(item.InnerText.Trim());
                    }
                }
            }
            return String.Join(" ", chunks);
        }
        public const int ImageMinimumBytes = 512;

        public static bool IsImage(HttpPostedFileBase postedFile)
        {
            //-------------------------------------------
            //  Check the image mime types
            //-------------------------------------------
            if (!string.Equals(postedFile.ContentType, "image/jpg", StringComparison.OrdinalIgnoreCase) &&
                !string.Equals(postedFile.ContentType, "image/jpeg", StringComparison.OrdinalIgnoreCase) &&
                !string.Equals(postedFile.ContentType, "image/pjpeg", StringComparison.OrdinalIgnoreCase) &&
                !string.Equals(postedFile.ContentType, "image/gif", StringComparison.OrdinalIgnoreCase) &&
                !string.Equals(postedFile.ContentType, "image/x-png", StringComparison.OrdinalIgnoreCase) &&
                !string.Equals(postedFile.ContentType, "image/png", StringComparison.OrdinalIgnoreCase))
            {
                return false;
            }

            //-------------------------------------------
            //  Check the image extension
            //-------------------------------------------
            var postedFileExtension = Path.GetExtension(postedFile.FileName);
            if (!string.Equals(postedFileExtension, ".jpg", StringComparison.OrdinalIgnoreCase)
                && !string.Equals(postedFileExtension, ".png", StringComparison.OrdinalIgnoreCase)
                && !string.Equals(postedFileExtension, ".gif", StringComparison.OrdinalIgnoreCase)
                && !string.Equals(postedFileExtension, ".jpeg", StringComparison.OrdinalIgnoreCase))
            {
                return false;
            }

            //-------------------------------------------
            //  Attempt to read the file and check the first bytes
            //-------------------------------------------
            try
            {
                if (!postedFile.InputStream.CanRead)
                {
                    return false;
                }
                //------------------------------------------
                //   Check whether the image size exceeding the limit or not
                //------------------------------------------ 
                if (postedFile.ContentLength < ImageMinimumBytes)
                {
                    return false;
                }

                byte[] buffer = new byte[ImageMinimumBytes];
                postedFile.InputStream.Read(buffer, 0, ImageMinimumBytes);
                string content = System.Text.Encoding.UTF8.GetString(buffer);
                if (Regex.IsMatch(content, @"<script|<html|<head|<title|<body|<pre|<table|<a\s+href|<img|<plaintext|<cross\-domain\-policy",
                    RegexOptions.IgnoreCase | RegexOptions.CultureInvariant | RegexOptions.Multiline))
                {
                    return false;
                }
            }
            catch (Exception)
            {
                return false;
            }

            //-------------------------------------------
            //  Try to instantiate new Bitmap, if .NET will throw exception
            //  we can assume that it's not a valid image
            //-------------------------------------------

            try
            {
                using (var bitmap = new System.Drawing.Bitmap(postedFile.InputStream))
                {
                }
            }
            catch (Exception)
            {
                return false;
            }
            finally
            {
                postedFile.InputStream.Position = 0;
            }

            return true;
        }

    }
}