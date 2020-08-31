using Project_ASPNETMVC_2020.Model.EF;
using Project_ASPNETMVC_2020.Model.ModelOfSession;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;

namespace Project_ASPNETMVC_2020.Areas.Admin.Controllers
{
    public class HomeController : Controller
    {
         
       public ActionResult Index()
        {
            User user = Session["User"] as User;
            if (user != null&&user.LEVEL.Equals("10")&&user.ACTIVE=="1")
            {
                return View();
            }
            else
            {
                return RedirectToAction("Index", "Home", new { area = "" });
            }
        }
        public ActionResult LogOut()
        {
            FormsAuthentication.SignOut();
            Session.Clear();
            Session.Abandon();
            return RedirectToAction("Index", "Home", new { area = "" });
        }
    }
}