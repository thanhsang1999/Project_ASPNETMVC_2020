using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Project_ASPNETMVC_2020.Controllers
{
    public class LikeController : Controller
    {
        // GET: Like
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult DeleteLikeForHeader()
        {
            return View();
        }
        public ActionResult DeleteLikeForContain()
        {
            return View();
        }
    }
}