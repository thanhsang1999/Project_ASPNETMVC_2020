using Project_ASPNETMVC_2020.ClassToConfig;
using Project_ASPNETMVC_2020.Model.Cart;
using Project_ASPNETMVC_2020.Model.DAO;
using Project_ASPNETMVC_2020.Model.EF;
using Project_ASPNETMVC_2020.Model.ModelOfSession;
using System;
using System.Collections;
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
            ArrayList model = new ArrayList();
            List<CartProduct> listCartProduct = CartDAO.LoadCart(user.ID_ACCOUNT);
            string TotalMoney = CartDAO.TotalMoney(user.ID_ACCOUNT, true);
            model.Add(listCartProduct);
            model.Add(TotalMoney);
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
                int number = CartDAO.NumberOfProduct(user.ID_ACCOUNT);
                string price = CartDAO.TotalMoney(user.ID_ACCOUNT,true);
                return new JsonResult { Data = new { status = status,number=number,price= price } };
            }
            else
            {
                return RedirectToAction("Index", "Home");
            }
        }
        [HttpPost]
        public ActionResult checkProductCart(string idProduct)
        {

            User user = Session["User"] as User;
            if (user != null)
            {
                string status = "success";
                DBModel db = new DBModel();
                var cart = db.carts.Where(x => x.ID_ACCOUNT.Equals(user.ID_ACCOUNT) && x.ID_PRODUCT.Equals(idProduct)).FirstOrDefault();
                if (cart.CHECKBOX == 1)
                {
                    cart.CHECKBOX = 0;
                    db.SaveChanges();
                }
                else
                {
                    cart.CHECKBOX = 1;
                    db.SaveChanges();
                }
                string price = CartDAO.TotalMoney(user.ID_ACCOUNT, true);
                return new JsonResult { Data = new { status = status,price = price } };
            }
            else
            {
                return RedirectToAction("Index", "Home");
            }
        }
        public ActionResult deleteItemContentCart(string idproduct5)
        {
            string html = PartialView("ContentCart").RenderToString();

            return Json(new { result = html });

        }




    }
}