using Project_ASPNETMVC_2020.Model.EF;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;


namespace Project_ASPNETMVC_2020.Areas.Admin.ClassToConfig
{
    public class HandleFile
    {
        public const string folderimageproduct = "~/Assets/web/images/sanpham";
        public List<string> uploadImageProduct(List<HttpPostedFileBase> files, string realnameproduct)
        {
            List<string> listimg = new List<string>();
            for (int i = 0; i < files.Count; i++)
            {
                HttpPostedFileBase file = files[i];
                string fileName = realnameproduct + "_" + (i + 1);
                fileName = fileName + Path.GetExtension(file.FileName);
                string mimeType = file.ContentType;
                string path = Path.Combine(HttpContext.Current.Server.MapPath(folderimageproduct), fileName);
                file.SaveAs(path);
                listimg.Add(fileName);
            }
            return listimg;
        }
        public Dictionary<int, string> uploadImageProduct(Dictionary<int, HttpPostedFileBase> files, string realnameproduct)
        {
            Dictionary<int, string> listimg = new Dictionary<int, string>();
            if (files.Count() > 0)
            {
                var keys = files.Keys;
                foreach (var k in keys)
                {
                    var file = files[k];
                    string fileName = realnameproduct + "_" + k;
                    fileName = fileName + Path.GetExtension(file.FileName);
                    string path = Path.Combine(HttpContext.Current.Server.MapPath(folderimageproduct), fileName);
                    file.SaveAs(path);
                    listimg.Add(k,fileName);
                }
            }
            return listimg;
        }
        public void deleteImage(product p)
        {
            
            string path1 = Path.Combine(HttpContext.Current.Server.MapPath(folderimageproduct), p.IMG);
            string path2 = Path.Combine(HttpContext.Current.Server.MapPath(folderimageproduct), p.IMG2);
            string path3 = Path.Combine(HttpContext.Current.Server.MapPath(folderimageproduct), p.IMG3);
            List<string> fullpath = new List<string>();
            fullpath.Add(path1);
            fullpath.Add(path2);
            fullpath.Add(path3);
          foreach(string path in fullpath)
            {
                if (File.Exists(path))
                {
                    File.Delete(path);
                }
            }


        }
    }
}