using Project_ASPNETMVC_2020.Areas.Admin.Model.DAO;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Project_ASPNETMVC_2020.Areas.Admin.Controllers
{
    public class ProductController : Controller
    {
        // GET: Admin/Product
        public ActionResult ListProduct(string page)
        {
            if (page == null)
            {

            }
            ProductDAO productdao = new ProductDAO();
            var model = new ArrayList();
            model.Add(productdao.listAllProduct());
            return View(model);
        }
    }
}