using Project_ASPNETMVC_2020.Areas.Admin.Model.DAO;
using Project_ASPNETMVC_2020.Areas.Admin.ToolsAdmin;
using Project_ASPNETMVC_2020.ClassToConfig;
using Project_ASPNETMVC_2020.Filter;
using Project_ASPNETMVC_2020.Model.ModelOfSession;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.Mvc;

namespace Project_ASPNETMVC_2020.Areas.Admin.Controllers
{
    [LogFilter(Order = 1)]

    public class BrandController : Controller
    {
        // GET: Admin/Brand
        [AuthFilter(roleIsRequired = LevelAuth.Admin, Order = 0)]
        public ActionResult FormAddBrand()
        {
            return View();
        }
         [AuthFilter(roleIsRequired = LevelAuth.Admin, Order = 0)]
        public ActionResult FormDeleteBrand()
        {
            BrandDAO dao = new BrandDAO();

            var model = dao.getAllBrands();
            if (model == null)
            {
                return RedirectToAction("Index", "Home", new { area = "" });
            }
            return View(model);
        }
        public ActionResult AddBrand(string brand)
        {
            string rs = "";
            BrandDAO dao = new BrandDAO();
            User user = Session["User"] as User;
            if (user == null || user.LEVEL.Equals("10") == false)
            {
                rs = "user";
            }
            else if (brand == null)
            {
                rs = "null";
            }
            else if (ToolsOfAdmin.checkNull(brand) == false)
            {
                rs = "null";
            }else if (ToolsOfAdmin.oneWord(brand) == false)
            {
                rs = "word";
            }else if(dao.checkExit(brand)== true)
            {
                rs = "exit";
            }
            else
            {
                var check=dao.addBrand(brand);
                if (check == false)
                {
                    rs = "fail";
                }
                else
                {
                    rs = "success";
                }
               
              
            }
            return Json(new { result = rs }, JsonRequestBehavior.AllowGet);
        }
        public ActionResult DeleteBrand(string brand)
        {
            string rs = "";
            BrandDAO dao = new BrandDAO();
            User user = Session["User"] as User;
            if (user == null || user.LEVEL.Equals("10") == false)
            {
                rs = "user";
            }
            else if (brand == null)
            {
                rs = "null";
            }
            else if (ToolsOfAdmin.checkNull(brand) == false)
            {
                rs = "null";
            }
            else if (ToolsOfAdmin.oneWord(brand) == false)
            {
                rs = "word";
            }
            else if (dao.checkExit(brand) == false)
            {
                rs = "exit";
            }
            else
            {
                var check = dao.delBrand(brand);
                if (check == false)
                {
                    rs = "fail";
                }
                else
                {
                    rs = "success";
                }


            }
            return Json(new { result = rs }, JsonRequestBehavior.AllowGet);
        }
    }
}