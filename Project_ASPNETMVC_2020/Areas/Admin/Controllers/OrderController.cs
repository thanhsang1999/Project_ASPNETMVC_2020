using Project_ASPNETMVC_2020.Areas.Admin.Model.DAO;
using Project_ASPNETMVC_2020.ClassToConfig;
using Project_ASPNETMVC_2020.Filter;
using Project_ASPNETMVC_2020.Model.ModelOfSession;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Project_ASPNETMVC_2020.Areas.Admin.Controllers
{
    [LogFilter(Order = 1)]
    public class OrderController : Controller
    {
        // GET: Admin/Order
        [AuthFilter(roleIsRequired = LevelAuth.Admin, Order = 0)]

        public ActionResult ListOrderNew()
        {
            User user = Session["User"] as User;
            if (user != null && user.LEVEL.Equals("10"))
            {
                var model = new ArrayList();
                model.Add(OrderDAO.ListOrder("0", "1"));
                model.Add(OrderDAO.LoadDetailOrder("0", "1"));
                return View(model);
            }
            else
            {
                return RedirectToAction("Index", "Home", new { area = "" });
            }
           
        }
        [AuthFilter(roleIsRequired = LevelAuth.Admin, Order = 0)]

        public ActionResult ListOrderOld()
        {
            
            User user = Session["User"] as User;
            if (user != null && user.LEVEL.Equals("10"))
            {
                var model = new ArrayList();
                model.Add(OrderDAO.ListOrder("1", "2"));
                model.Add(OrderDAO.LoadDetailOrder("1", "2"));
                return View(model);
            }
            else
            {
                return RedirectToAction("Index", "Home", new { area = "" });
            }
        }
        [AuthFilter(roleIsRequired = LevelAuth.Admin, Order = 0)]

        public ActionResult ChangeStatusOrder(string idOrder,string stt,string actionn)
        {
            User user = Session["User"] as User;
            if (user != null && user.LEVEL.Equals("10"))
            {
                if (OrderDAO.checkOrder(idOrder))
                {
                    OrderDAO.ChangeStatusOrder(idOrder, stt);
                    return RedirectToAction(actionn, "Order");
                }
                else
                {
                    return RedirectToAction(actionn, "Order");
                }
            }
            else
            {
                return RedirectToAction("Index", "Home", new { area = "" });
            }

        }
    }
}