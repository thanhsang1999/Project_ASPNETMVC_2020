using Project_ASPNETMVC_2020.Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Project_ASPNETMVC_2020.Controllers
{
    public class ProductController : Controller
    {
        // GET: Product
        DBModel dbmodel = new DBModel();
        
        public ActionResult Product()
        {
          
            return View();
        }
        public ActionResult ShowListProduct()
        {
            List<product> listProduct = dbmodel.products.SqlQuery("SELECT TOP 10 * from project_2019.product").ToList();
            return View(listProduct);
        }
    }
}