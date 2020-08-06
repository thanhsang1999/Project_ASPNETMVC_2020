using Project_ASPNETMVC_2020.ClassToConfig;
using Project_ASPNETMVC_2020.Model.Cart;
using Project_ASPNETMVC_2020.Model.DAO;
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
        public ActionResult Index()
        {
            User user = Session["User"] as User;
            if (user != null)
            {
            List<CartProduct> model = CartDAO.LoadCart(user.ID_ACCOUNT);
            return View(model);
            }
            else
            {
                return RedirectToAction("Index", "Home");
            }
        }
        [HttpPost]
        public ActionResult AddProductToCart(string idProduct, int amount)
        {
            User user = Session["User"] as User;
            if (user != null)
            {
                string status = "success";
                CartDAO.AddProductToCart(user.ID_ACCOUNT, idProduct, amount);
                return new JsonResult { Data = new { status = status } };
            }
            else
            {
                return RedirectToAction("Index", "Home");
            }
        }
        public ActionResult deleteItemHeader(string idproduct)
        {
            return null;
            /* return PartialView("Header", cart);*/
        }
        public ActionResult deleteItemContentCart(string idproduct5)
        {
            string html = PartialView("ContentCart").RenderToString();

            return Json(new { result = html });

        }




    }
}