using Project_ASPNETMVC_2020.Areas.Admin.Model.DAO;
using Project_ASPNETMVC_2020.Areas.Admin.Model.Slider;
using Project_ASPNETMVC_2020.Model.ModelOfSession;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Project_ASPNETMVC_2020.Areas.Admin.Controllers
{
    public class SliderController : Controller
    {
        // GET: Admin/Slider
        public ActionResult Index()
        {
            User user = Session["User"] as User;
            if (user != null && user.LEVEL.Equals("10"))
            {
                ArrayList model = new ArrayList();
                var listSlider = SliderDAO.LoadListSlider();
                model.Add(listSlider);
                return View(model);
            }
            else
            {
                return RedirectToAction("Index", "Home", new { area = "" });
            }
        }
        public ActionResult CreateSlider()
        {
            User user = Session["User"] as User;
            if (user != null && user.LEVEL.Equals("10"))
            {
                return View();
            }
            else
            {
                return RedirectToAction("Index", "Home", new { area = "" });
            }
        }
        [HttpPost]
        public ActionResult FormDataCreateSlider(string SLname,HttpPostedFileBase SLfile)
        {
            User user = Session["User"] as User;
            if (user != null && user.LEVEL.Equals("10"))
            {
                var file = SLfile.FileName;
                string status;
                /*string Name = data.SLname;
                var file = data.SLfile;
                if (Name == null || file == null || Name == "")
                {*/
                if (file == null) { 
                    status = "empty";
                    return new JsonResult { Data = new { status = status } };
                }
                else
                {
                  /*  DBModel db1 = new DBModel();
                    var TmpUser = db1.accounts.Where(x => x.ID_ACCOUNT.Equals(Idaccount)).FirstOrDefault();
                    TmpUser.LEVEL = Level;
                    TmpUser.ACTIVE = Active;
                    db1.SaveChangesAsync();*/
                    status = "success";
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