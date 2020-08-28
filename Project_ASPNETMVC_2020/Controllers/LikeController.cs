using Project_ASPNETMVC_2020.ClassToConfig;
using Project_ASPNETMVC_2020.Model.DAO;
using Project_ASPNETMVC_2020.Model.EF;
using Project_ASPNETMVC_2020.Model.ModelOfSession;
using System;
using System.Collections;
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
            var user = Session["User"] as User;

            if (user == null)
            {
                return RedirectToAction("Index", "Home");
            }
            else
            {
                List<product> ListLikeOfUser = new LikeDAO().getListProductUserHasLike(user.ID_ACCOUNT);
                ArrayList model = new ArrayList();
                model.Add(ListLikeOfUser);
                return View(model);
            }
        }
        public ActionResult DeleteLike(string idproduct)
        {

            string rs = null;
            string html = null;
            LikeDAO dao = new LikeDAO();
            User user = Session["User"] as User;
            if (user == null)
            {
                rs = "user";
            }
            else if (dao.checkIsProduct(idproduct) == false || dao.isUserHasLike(idproduct, user.ID_ACCOUNT) == false)
            {
                rs = "fail";
            }
            else
            {
                dao.deleteLike(user.ID_ACCOUNT, idproduct);
                rs = new LikeDAO().getNumberUserLike(user.ID_ACCOUNT).ToString();
             
            }
            return Json(new { result = rs, htmlreplace = html }, JsonRequestBehavior.AllowGet);
        }

    }
}