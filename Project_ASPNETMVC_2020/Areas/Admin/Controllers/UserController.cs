using Project_ASPNETMVC_2020.Areas.Admin.Model.DAO;
using Project_ASPNETMVC_2020.Model.ModelOfSession;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Project_ASPNETMVC_2020.Areas.Admin.Controllers
{
    public class UserController : Controller
    {
        // GET: Admin/User
        public ActionResult Index()
        {
            User user = Session["User"] as User;
            if (user != null && user.LEVEL.Equals("10"))
            {
                ArrayList model = new ArrayList();
                var listUser = UserDAO.LoadListUser();
                model.Add(listUser);
                return View(model);
            }
            else
            {
                return RedirectToAction("Index", "Home", new { area = "" });
            }
           
        }
    }
}