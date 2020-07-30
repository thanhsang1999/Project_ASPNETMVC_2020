using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Project_ASPNETMVC_2020.ClassToConfig
{
    public class Link
    {
        
        public Link()
        {

        }
        public string correctUrlImg(string url)
        {
            url = url.Substring(0, url.Length - 3);
            url += "jpg";
            return url;
        }
            
        
      

    }
}