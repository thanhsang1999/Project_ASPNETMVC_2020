using Project_ASPNETMVC_2020.Model.DAO;
using Project_ASPNETMVC_2020.Model.EF;
using Project_ASPNETMVC_2020.Model.ModelOfSession;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;

namespace Project_ASPNETMVC_2020.Controllers
{
    public class HeaderController : Controller
    {
        // GET: Header
        DBModel dbmodel = new DBModel();
        public ActionResult MainNavigation()
        {

            return PartialView();
        }
        public ActionResult Header()
        {
            User user = Session["User"] as User;
            if (user != null)
            {
                var cart = CartDAO.LoadCart(user.ID_ACCOUNT);
                var numberOfProductsInTheCart = CartDAO.NumberOfProduct(user.ID_ACCOUNT);
                var totalMoney = CartDAO.TotalMoney(user.ID_ACCOUNT, false);
                ArrayList model = new ArrayList();
                model.Add(cart);
                model.Add(numberOfProductsInTheCart);
                model.Add(totalMoney);
                return PartialView(model);
            }
            else
            {
                return PartialView();
            }
        }
        [HttpPost]
        public ActionResult Header(string logout)
        {
            FormsAuthentication.SignOut();
            Session.Clear();
            Session.Abandon();
            return PartialView();
        }
    }
}