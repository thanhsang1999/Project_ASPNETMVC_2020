using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;  


namespace Project_ASPNETMVC_2020.Areas.Admin.ClassToConfig
{
    public class UploadFile
    {
        public const string folderimageproduct = "~/Assets/web/images/sanpham";
        public List<string> uploadImageProduct(List<HttpPostedFileBase> files,string realnameproduct)
        {
            List<string> listimg = new List<string>();
            for(int i = 0; i < files.Count; i++)
            {
                HttpPostedFileBase file = files[i];               
                string fileName = realnameproduct + "_"+(i+1);
                fileName = fileName + Path.GetExtension(file.FileName);
                string mimeType = file.ContentType;
                string path = Path.Combine(HttpContext.Current.Server.MapPath(folderimageproduct), fileName);
                file.SaveAs(path);
                listimg.Add(fileName);
            }
            return listimg;
        }
      
    }
}