using Project_ASPNETMVC_2020.Model.ModelOfSession;
using Project_ASPNETMVC_2020.Areas.Admin.Model.DAO;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Project_ASPNETMVC_2020.Areas.Admin.Controllers
{
    public class CommentController : Controller
    {
        // GET: Admin/Comment
        public ActionResult Index()
        {
            User user = Session["User"] as User;
            if (user != null && user.LEVEL.Equals("10"))
            {
                ArrayList model = new ArrayList();
                var listComment = CommentDAO.LoadListComment();
                model.Add(listComment);
                return View(model);
            }
            else
            {
                return RedirectToAction("Index", "Home", new { area = "" });
            }

        }
        [HttpPost]
        public ActionResult DeleteComment(string idComment)
        {
            string status;
            User user = Session["User"] as User;
            if (user != null && user.LEVEL.Equals("10"))
            {
                if (CommentDAO.DeleteCommentByID(int.Parse(idComment)))
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