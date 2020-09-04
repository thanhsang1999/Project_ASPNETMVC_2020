using Project_ASPNETMVC_2020.Areas.Admin.Model.DAO;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Project_ASPNETMVC_2020.Areas.Admin.Controllers
{
    public class OrderController : Controller
    {
        // GET: Admin/Order
        public ActionResult ListOrderNew()
        {
          
            OrderDAO orderdao = new OrderDAO();
            var model = new ArrayList();
            model.Add(orderdao.ListOrder());
            model.Add(orderdao.LoadDetailOrder());
            return View(model);
        }

        public ActionResult ListOrderOld()
        {
            OrderDAO orderdao = new OrderDAO();
            var model = new ArrayList();
            model.Add(orderdao.ListOrder2());
            model.Add(orderdao.LoadDetailOrder2());
            return View(model);
        }
    }
}