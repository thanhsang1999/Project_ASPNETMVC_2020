using Project_ASPNETMVC_2020.ClassToConfig;
using Project_ASPNETMVC_2020.Filter;
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
            if(Session["Cart"] as Cart == null)
            {
                Session.Add("Cart", new Cart());
            }
            Cart model =Session["Cart"] as Cart;
            return View(model);
        }
        public ActionResult AddCart(string idproduct,int quantity)
        {
            int setQuantity = Convert.ToInt32(quantity);
            Cart cart= Session["Cart"] as Cart;
            cart.addItemWithAmount(idproduct, setQuantity);
            Session["Cart"] = cart;
            return PartialView("Header",cart);
        }
        public ActionResult deleteItemHeader(string idproduct)
        {       
            Cart cart = Session["Cart"] as Cart;
            cart.removeItem(idproduct);
            Session["Cart"] = cart;
          
            return PartialView("Header", cart);
        }
        public JsonResult deleteItemContentCart(string idproduct5)
        {
            string html = PartialView("ContentCart").RenderToString();
            return Json(new { result = html }, JsonRequestBehavior.AllowGet);

        }




    }
}