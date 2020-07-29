using Project_ASPNETMVC_2020.Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Project_ASPNETMVC_2020.Controllers
{
    public class HeaderController : Controller
    {
        // GET: Header
        DBModel dbmodel = new DBModel();
        public ActionResult MainNavigation()
        {
            List<brand> listbrand = dbmodel.brands.ToList();
            return PartialView(listbrand);
        }
        
    }
}