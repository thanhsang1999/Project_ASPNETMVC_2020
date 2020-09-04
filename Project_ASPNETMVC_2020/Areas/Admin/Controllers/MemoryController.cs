using Project_ASPNETMVC_2020.Areas.Admin.Model.DAO;
using Project_ASPNETMVC_2020.Areas.Admin.ToolsAdmin;
using Project_ASPNETMVC_2020.ClassToConfig;
using Project_ASPNETMVC_2020.Filter;
using Project_ASPNETMVC_2020.Model.ModelOfSession;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Project_ASPNETMVC_2020.Areas.Admin.Controllers
{
    [LogFilter(Order = 1)]
    public class MemoryController : Controller
    {
        // GET: Admin/Memory
        [AuthFilter(roleIsRequired = LevelAuth.Admin, Order = 0)]
        public ActionResult FormAddMemory()
        {
            return View();
        }
        [AuthFilter(roleIsRequired = LevelAuth.Admin, Order = 0)]
        public ActionResult FormDeleteMemory()
        {
            MemoryDAO dao = new MemoryDAO();

            var model = dao.getAllMemory();
            if (model == null)
            {
                return RedirectToAction("Index", "Home", new { area = "" });
            }
            return View(model);
            
        }
        public ActionResult AddMemory(string memory)
        {
            MemoryDAO dao = new MemoryDAO();
            User user = Session["User"] as User;
            var rs = "";
            if (user == null || user.LEVEL.Equals("10") == false)
            {
                rs = "user";
            }
            else if (memory == null)
            {
                rs = "null";
            }
            else if (ToolsOfAdmin.checkNull(memory) == false)
            {
                rs = "null";
            }
            else if (ToolsOfAdmin.checkNum(memory) == false)
            {
                rs = "number";
            }
            else if (dao.checkExit(Convert.ToInt32(memory)) == true)
            {
                rs = "exit";
            }
            else if (Convert.ToInt32(memory) <= 0)
            {
                rs = "lower";
            }
            else
            {
                var check = dao.addMemory(Convert.ToInt32(memory));
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
        public ActionResult DeleteMemory(string memory)
        {
            MemoryDAO dao = new MemoryDAO();
            User user = Session["User"] as User;
            var rs = "";
            if (user == null || user.LEVEL.Equals("10") == false)
            {
                rs = "user";
            }
            else if (memory == null)
            {
                rs = "null";
            }
            else if (ToolsOfAdmin.checkNull(memory) == false)
            {
                rs = "null";
            }
            else if (ToolsOfAdmin.checkNum(memory) == false)
            {
                rs = "number";
            }
            else if (dao.checkExit(Convert.ToInt32(memory)) == false)
            {
                rs = "exit";
            }
            else if (Convert.ToInt32(memory) <= 0)
            {
                rs = "lower";
            }
            else
            {
                var check = dao.delMemory(Convert.ToInt32(memory));
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
