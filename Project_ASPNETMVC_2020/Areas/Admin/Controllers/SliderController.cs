using Project_ASPNETMVC_2020.Areas.Admin.Model.DAO;
using Project_ASPNETMVC_2020.Areas.Admin.Model.Slider;
using Project_ASPNETMVC_2020.Model.EF;
using Project_ASPNETMVC_2020.Model.ModelOfSession;
using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
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
                string status;
                string Name = SLname;
                var file = SLfile;
                if (Name == null || file == null || Name == "")
                {
                    status = "empty";
                    return new JsonResult { Data = new { status = status } };
                }
                else
                {
                    string image = System.IO.Path.GetFileName(file.FileName);
                    string path = System.IO.Path.Combine(Server.MapPath("~/Assets/web/images/slider"), image);
                    file.SaveAs(path);
                    using (MemoryStream ms = new MemoryStream())
                    {
                        file.InputStream.CopyTo(ms);
                        byte[] array = ms.GetBuffer();
                    }
                    string idSlider = SliderDAO.GenerateIDSlider();
                    int numberSlider = SliderDAO.GenerateNumberSlider();
                    DBModel db = new DBModel();
                    var tableSlider = db.sliders;
                    slider tmpSlider = new slider();
                    tmpSlider.ID_SLIDER = idSlider;
                    tmpSlider.NAME = Name;
                    tmpSlider.IMAGE = file.FileName;
                    tmpSlider.NUMBER = numberSlider;
                    tmpSlider.ACTIVE = 1;
                    tableSlider.Add(tmpSlider);
                    db.SaveChangesAsync();
                    status = "success";
                    return new JsonResult { Data = new { status = status } };
                }
            }
            else
            {
                return RedirectToAction("Index", "Home", new { area = "" });
            }

        }
        public ActionResult EditSlider(string idSlider)
        {
            User user = Session["User"] as User;
            if (user != null && user.LEVEL.Equals("10"))
            {
                slider tmpSlider = SliderDAO.LoadSlider(idSlider);
                ArrayList model = new ArrayList();
                model.Add(tmpSlider);
                return View(model);
            }
            else
            {
                return RedirectToAction("Index", "Home", new { area = "" });
            }
        }
        [HttpPost]
        public ActionResult FormDataEditSlider(string SLname, HttpPostedFileBase SLfile,string SLnumber,string SLactive)
        {
            User user = Session["User"] as User;
            if (user != null && user.LEVEL.Equals("10"))
            {
                string status;
                string Name = SLname;
                var file = SLfile;
                if (Name == null || file == null || Name == "")
                {
                    status = "empty";
                    return new JsonResult { Data = new { status = status } };
                }
                else
                {
                    string image = System.IO.Path.GetFileName(file.FileName);
                    string path = System.IO.Path.Combine(Server.MapPath("~/Assets/web/images/slider"), image);
                    file.SaveAs(path);
                    using (MemoryStream ms = new MemoryStream())
                    {
                        file.InputStream.CopyTo(ms);
                        byte[] array = ms.GetBuffer();
                    }
                    string idSlider = SliderDAO.GenerateIDSlider();
                    int numberSlider = SliderDAO.GenerateNumberSlider();
                    DBModel db = new DBModel();
                    var tableSlider = db.sliders;
                    slider tmpSlider = new slider();
                    tmpSlider.ID_SLIDER = idSlider;
                    tmpSlider.NAME = Name;
                    tmpSlider.IMAGE = file.FileName;
                    tmpSlider.NUMBER = numberSlider;
                    tmpSlider.ACTIVE = 1;
                    tableSlider.Add(tmpSlider);
                    db.SaveChangesAsync();
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