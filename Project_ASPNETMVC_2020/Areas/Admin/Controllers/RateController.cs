using Project_ASPNETMVC_2020.Areas.Admin.Model.DAO;
using Project_ASPNETMVC_2020.Model.ModelOfSession;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Project_ASPNETMVC_2020.Areas.Admin.Controllers
{
    public class RateController : Controller
    {
        // GET: Admin/Rate
        public ActionResult Index()
        {
            User user = Session["User"] as User;
            if (user != null && user.LEVEL.Equals("10"))
            {
                ArrayList model = new ArrayList();
                var listRates = RateDAO.LoadListRate();
                model.Add(listRates);
                return View(model);
            }
            else
            {
                return RedirectToAction("Index", "Home", new { area = "" });
            }

        }
        [HttpPost]
        public ActionResult DeleteRate(string idRate)
        {
            string status;
            User user = Session["User"] as User;
            if (user != null && user.LEVEL.Equals("10"))
            {
                if (RateDAO.DeleteRateByID(int.Parse(idRate)))
                {
                    status = "success";
                    return new JsonResult { Data = new { status = status } };
                }
                else
                {
                    status = "fail";
                    return new JsonResult { Data = new { status = status } };
                }
            }
            else
            {
                return RedirectToAction("Index", "Home", new { area = "" });
            }
        }
    }
}