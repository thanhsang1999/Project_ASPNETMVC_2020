using Project_ASPNETMVC_2020.Model.EF;
using Project_ASPNETMVC_2020.Model.ModelOfSession;
using Project_ASPNETMVC_2020.Model.Order;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Project_ASPNETMVC_2020.Controllers
{
    public class OrderUserController : Controller
    {
        // GET: OrderUser
        public ActionResult Index()
        {
            User user = Session["user"] as User;
            if (user != null)
            {
                ArrayList model = new ArrayList();
                var listOrder = OrderDAO.LoadOrderAccount(user.ID_ACCOUNT);
                var listDetailOrder = OrderDAO.LoadDetailOrder(user.ID_ACCOUNT);
                model.Add(listOrder);
                model.Add(listDetailOrder);
                return View(model);
            }
            else
            {
                return RedirectToAction("Index", "Home");
            }
        }
    }
}