﻿using Project_ASPNETMVC_2020.Areas.Admin.Model.DAO;
using Project_ASPNETMVC_2020.Areas.Admin.Model.Slider;
using Project_ASPNETMVC_2020.ClassToConfig;
using Project_ASPNETMVC_2020.Filter;
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
    [LogFilter(Order = 1)]
    public class SliderController : Controller
    {
        // GET: Admin/Slider
        [AuthFilter(roleIsRequired = LevelAuth.Admin, Order = 0)]
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
        [AuthFilter(roleIsRequired = LevelAuth.Admin, Order = 0)]
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
        [AuthFilter(roleIsRequired = LevelAuth.Admin, Order = 0)]
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
        public ActionResult FormDataEditSlider(string idSlider,string SLname, HttpPostedFileBase SLfile,string SLnumber,string SLactive)
        {
            User user = Session["User"] as User;
            if (user != null && user.LEVEL.Equals("10"))
            {
                string status;
                string id = idSlider;
                string Name = SLname;
                var file = SLfile;
                var number = SLnumber;
                var active = SLactive;
                if (Name == null || Name == ""|| number==null|| number == ""|| active==null || active==""|| id==null|| id=="")
                {
                    status = "empty";
                    return new JsonResult { Data = new { status = status } };
                }
                else if (SliderDAO.CheckExistNumber(idSlider,number))
                {
                    status = "number";
                    return new JsonResult { Data = new { status = status } };
                }
                else
                {
                    if (file != null)
                    {
                        string image = System.IO.Path.GetFileName(file.FileName);
                        string path = System.IO.Path.Combine(Server.MapPath("~/Assets/web/images/slider"), image);
                        file.SaveAs(path);
                        using (MemoryStream ms = new MemoryStream())
                        {
                            file.InputStream.CopyTo(ms);
                            byte[] array = ms.GetBuffer();
                        }
                        DBModel db = new DBModel();
                        var tmpSlider = db.sliders.Where(x=>x.ID_SLIDER.Equals(idSlider)).FirstOrDefault();
                        tmpSlider.ID_SLIDER = idSlider;
                        tmpSlider.NAME = Name;
                        tmpSlider.IMAGE = file.FileName;
                        tmpSlider.NUMBER = int.Parse(number);
                        tmpSlider.ACTIVE = int.Parse(active);
                        db.SaveChangesAsync();
                    }
                    else
                    {
                        DBModel db = new DBModel();
                        var tmpSlider = db.sliders.Where(x => x.ID_SLIDER.Equals(idSlider)).FirstOrDefault();
                        tmpSlider.ID_SLIDER = idSlider;
                        tmpSlider.NAME = Name;
                        tmpSlider.NUMBER = int.Parse(number);
                        tmpSlider.ACTIVE = int.Parse(active);
                        db.SaveChangesAsync();
                    }

                    
                    status = "success";
                    return new JsonResult { Data = new { status = status } };
                }
            }
            else
            {
                return RedirectToAction("Index", "Home", new { area = "" });
            }

        }
        [HttpPost]
        public ActionResult DeleteSlider(string idSlider)
        {
            string status;
            User user = Session["User"] as User;
            if (user != null && user.LEVEL.Equals("10"))
            {
                if (SliderDAO.checkSlider(idSlider))
                {
                    SliderDAO.DeleteSliderByID(idSlider);
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