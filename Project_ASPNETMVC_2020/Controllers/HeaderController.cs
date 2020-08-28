using Project_ASPNETMVC_2020.Model.DAO;
using Project_ASPNETMVC_2020.Model.EF;
using Project_ASPNETMVC_2020.Model.ModelOfSession;
using Project_ASPNETMVC_2020.Model.Other;
using System.Collections;
using System.Web.Mvc;
using System.Web.Security;
using System.Web.Routing;

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
            var nameProduct = SearchDAO.loadNameProduct();
            if (user != null)
            {
                var cart = CartDAO.LoadCart(user.ID_ACCOUNT);
                var numberOfProductsInTheCart = CartDAO.NumberOfProduct(user.ID_ACCOUNT);
                var totalMoney = CartDAO.TotalMoney(user.ID_ACCOUNT, false);
                ArrayList model = new ArrayList();
                model.Add(cart);
                model.Add(numberOfProductsInTheCart);
                model.Add(totalMoney);
                model.Add(nameProduct);
                return PartialView(model);
            }
            else
            {
                ArrayList model = new ArrayList();
                model.Add(nameProduct);
                return PartialView(model);
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
        public ActionResult Search(InputSearch input)
        {
            string id = SearchDAO.SearchNameToId(input.NameProduct);
            if (input.NameProduct != id)
            {
            return RedirectToAction("ProductDetail", "Product",new RouteValueDictionary(new { controller = "Product", action = "ProductDetail", Id = id } ));
            }
            else
            {
                // TODO
                // chức năng tìm kiếm nâng cao
                return RedirectToAction("Index", "Home");
            }
        }
    }
}