using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Project_ASPNETMVC_2020.Areas.Admin.Model.DAO;
using Project_ASPNETMVC_2020.Areas.Admin.ToolsAdmin;
using Project_ASPNETMVC_2020.ClassToConfig;
using Project_ASPNETMVC_2020.Filter;
using Project_ASPNETMVC_2020.Model.ModelOfSession;

namespace Project_ASPNETMVC_2020.Areas.Admin.Controllers
{
    public class RamController : Controller
    {
        // GET: Admin/Ram
        [AuthFilter(roleIsRequired = LevelAuth.Admin, Order = 0)]
        public ActionResult FormAddRam()
        {
            return View();
        }
        [AuthFilter(roleIsRequired = LevelAuth.Admin, Order = 0)]
        public ActionResult FormDeleteRam()
        {
            RamDAO dao = new RamDAO();

            var model = dao.getAllRam();
            if (model == null)
            {
                return RedirectToAction("Index", "Home", new { area = "" });
            }
            return View(model);
        }
        public ActionResult AddRam(string ram)
        {
            RamDAO dao = new RamDAO();
            User user = Session["User"] as User;
            var rs = "";
            if (user == null || user.LEVEL.Equals("10") == false)
            {
                rs = "user";
            }
            else if (ram == null)
            {
                rs = "null";
            }
            else if (ToolsOfAdmin.checkNull(ram) == false)
            {
                rs = "null";
            }
           
            else if (ToolsOfAdmin.checkNum(ram) == false)
            {
                rs = "number";
            }
            else if (dao.checkExit(Convert.ToInt32(ram)) == true)
            {
                rs = "exit";
            }else if (Convert.ToInt32(ram) <= 0)
            {
                rs = "lower";
            }
            else
            {
                var check = dao.addRam(Convert.ToInt32(ram));
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
        public ActionResult DeleteRam(string ram)
        {
            RamDAO dao = new RamDAO();
            User user = Session["User"] as User;
            var rs = "";
            if (user == null || user.LEVEL.Equals("10") == false)
            {
                rs = "user";
            }
            else if (ram == null)
            {
                rs = "null";
            }
            else if (ToolsOfAdmin.checkNull(ram) == false)
            {
                rs = "null";
            }
            else if (ToolsOfAdmin.checkNum(ram) == false)
            {
                rs = "number";
            }
            else if (dao.checkExit(Convert.ToInt32(ram)) == false)
            {
                rs = "exit";
            }
            else if (Convert.ToInt32(ram) <= 0)
            {
                rs = "lower";
            }
            else
            {
                var check = dao.delRam(Convert.ToInt32(ram));
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