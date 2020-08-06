using Project_ASPNETMVC_2020.ClassToConfig;
using Project_ASPNETMVC_2020.Model.ModelOfSession;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebGrease.Css.Ast;

namespace Project_ASPNETMVC_2020.Controllers
{
    public class CartController : Controller
    {


        // GET: Cart
        public ActionResult ViewCart()
        {

            return View(model);
        }
        public ActionResult AddCart(string idproduct, int quantity)
        {
            
            return PartialView("Header", cart);
        }
        public ActionResult deleteItemHeader(string idproduct)
        {
            

            return PartialView("Header", cart);
        }
        public ActionResult deleteItemContentCart(string idproduct5)
        {
            string html = PartialView("ContentCart").RenderToString();

            return Json(new { result = html });

        }




    }
}