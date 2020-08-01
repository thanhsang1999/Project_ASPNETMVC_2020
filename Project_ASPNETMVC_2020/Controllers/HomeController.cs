using Project_ASPNETMVC_2020.Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using Project_ASPNETMVC_2020.Model.ModelOfSession;


namespace Project_ASPNETMVC_2020.Controllers
{
    public class HomeController : Controller
    {
        DBModel dbmodel = new DBModel();
        public ActionResult Index()
        {
            return View();

        }
        [HttpPost]
        public JsonResult Login(UserLogin user)
        {
            string UserName = user.UNAME;
            string Password = user.PASS;
            using (dbmodel)
            {
                string status;
                var tmp = dbmodel.accounts.Count(a => a.USERNAME.Equals(user.UNAME) && a.PASSWORD.Equals(user.PASS));
                if (tmp == 1)
                {
                    Session["UserName"] = UserName;
                    status = "1";
                }
                else
                {
                    status = "0";
                }
                return new JsonResult { Data = new { status = status } };
            }
        }
        public ActionResult LogOut()
        {
            FormsAuthentication.SignOut();
            Session.Abandon();
            return RedirectToAction("Index", "Home");
        }


    }
}