using Project_ASPNETMVC_2020.Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Project_ASPNETMVC_2020.Areas.Admin.ClassConfig;


namespace Project_ASPNETMVC_2020.Areas.Admin.Controllers
{
    public class HomeController : Controller
    {
         
       public ActionResult Index()
        {
            return View();
        }
       
    }
}