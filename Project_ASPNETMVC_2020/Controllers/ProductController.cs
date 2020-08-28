using Project_ASPNETMVC_2020.ClassToConfig;
using Project_ASPNETMVC_2020.Filter;
using Project_ASPNETMVC_2020.Model.Code;
using Project_ASPNETMVC_2020.Model.DAO;
using Project_ASPNETMVC_2020.Model.EF;
using Project_ASPNETMVC_2020.Model.Evaluation;
using Project_ASPNETMVC_2020.Model.ModelOfSession;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Helpers;
using System.Web.Mvc;

namespace Project_ASPNETMVC_2020.Controllers
{
    public class ProductController : Controller
    {
        // GET: Product
        DBModel dbmodel = new DBModel();
        public ActionResult ProductDetail(string id)
        {

            
            product model = new product();
            if ((model = new ProductDAO().productDetail(id)) != null || id != null)
            {
                model = new ProductDAO().productDetail(id);
                ViewBag.Title = model.NAME;
                User user = Session["User"] as User;
                if (user != null)
                {
                    new RecentlyViewDAO().addRecentlyView(user.ID_ACCOUNT, id);
                }
                return View(model);
            }
            else
            {
                return RedirectToAction("Index", "Home");
            }



        }
        public ActionResult ShowListProduct(string id, string catogery, string page)
        {
            int itemInOnePage = 30;
            int totalRecord;
            int pageIndex;
            if (page == null)
            {
                pageIndex = 1;
            }
            else
            {
                pageIndex = Convert.ToInt32(page);
            }


            List<product> listProduct = null;
            try
            {
                if (id == null || catogery == null)
                {
                    totalRecord = dbmodel.products.Count();
                    listProduct = new ProductDAO().productAll(pageIndex, itemInOnePage);
                }
                else if (catogery.Equals("brand"))
                {
                    totalRecord = new ProductDAO().totalRecordByBrand(id);
                    listProduct = new ProductDAO().productByBrand(id, pageIndex, itemInOnePage);
                }
                else if (catogery.Equals("memory"))
                {
                    int setid = Convert.ToInt32(id);
                    totalRecord = new ProductDAO().totalRecordByMemory(setid);
                    listProduct = new ProductDAO().productByMemory(setid, pageIndex, itemInOnePage);
                }
                else if (catogery.Equals("hedieuhanh"))
                {
                    totalRecord = new ProductDAO().totalRecordByHeDieuHanh(id);
                    listProduct = new ProductDAO().productByHeDieuHanh(id, pageIndex, itemInOnePage);
                }
                else if (catogery.Equals("ram"))
                {
                    int setid = Convert.ToInt32(id);
                    totalRecord = new ProductDAO().totalRecoreByRam(setid);
                    listProduct = new ProductDAO().productByRam(setid, pageIndex, itemInOnePage);
                }
                else if (catogery.Equals("price"))
                {
                    int setid = Convert.ToInt32(id);
                    totalRecord = new ProductDAO().totalRecoreByPrice(setid);
                    listProduct = new ProductDAO().productByPrice(setid, pageIndex, itemInOnePage);
                }
                else
                {
                    totalRecord = dbmodel.products.Count();
                    listProduct = new ProductDAO().productAll(pageIndex, itemInOnePage);
                }
            }
            catch (Exception e)
            {
                return RedirectToAction("Index", "Home");
            }
            if (listProduct == null)
            {
                return RedirectToAction("Index", "Home");
            }
            ViewBag.pageIndex = pageIndex;
            ViewBag.totalRecord = totalRecord;
            ViewBag.maxPage = 10;
            int totalPage = 0;
            totalPage = (int)Math.Ceiling(((double)totalRecord / itemInOnePage));
            ViewBag.totalPage = totalPage;
            ViewBag.Frist = 1;
            ViewBag.Last = totalPage;
            ViewBag.Next = pageIndex == totalPage ? -1 : pageIndex + 1;
            ViewBag.Previous = pageIndex == 1 ? -1 : pageIndex - 1;
            ViewBag.Catogery = catogery == null ? "" : catogery;
            ViewBag.ID = id == null ? "" : id;
            return View(listProduct);
        }

        public ActionResult AddComment(string content, string nameofcm, string idproduct)
        {
            string rs = null;
            string name = nameofcm;
            string contentthis = content;
            CommentDAO dao = new CommentDAO();
            if (dao.checkNullContent(content) == false || dao.checkNullContent(nameofcm) == false)
            {
                rs = "fail";
            }
            else
            {
                dao.addComment(idproduct, name, contentthis);
                List<binhluan> model = dao.getListBLForProduct(idproduct);
                string html = PartialView("ContainComment", model).RenderToString();
                rs = html;
            }

            return Json(new { result = rs });
        }

        public ActionResult AddEvaluation(FormEval formeval)
        {

            string rs = null;
            User user = Session["User"] as User;
            string idproduct = formeval.idproduct;
            string title = formeval.titleofeval;
            string value = formeval.valuerating;
            string content = formeval.contenteval;
            List<string> listcheckNull = new List<string>();
            listcheckNull.Add(idproduct);
            listcheckNull.Add(title);
            listcheckNull.Add(value);
            listcheckNull.Add(content);
            var check = Tools.checkNullList(listcheckNull);
            var checkNum = Tools.checkNum(value);
            EvaluationDAO dao = new EvaluationDAO();
            if (user == null)
            {
                rs = "user";
            }
            else if (check == false)
            {

                rs = "fail1" + idproduct + title + value + content;
            }
            else if (checkNum == false)
            {
                rs = "fail2" + idproduct + title + value + content;
            }
            else
            {
                int realvalue = Convert.ToInt32(value);
                if (dao.checkValue(realvalue) == false)
                {
                    rs = "fail3" + idproduct + title + value + content;
                }
                else
                {
                    dao.addReviewDAO(user.ID_ACCOUNT, idproduct, title, realvalue, content);
                    var model = dao.getListEvalForProduct(idproduct);
                    string html = PartialView("ContainEvaluation", model).RenderToString();
                    rs = html;
                }
            }
            return Json(new { result = rs });
        }
        public ActionResult AddLike(string idproduct)
        {
            string rs = null;
            LikeDAO dao = new LikeDAO();
            User user = Session["User"] as User;
            if (user == null)
            {
                rs = "user";
            }
            else if (dao.checkIsProduct(idproduct) == false || dao.isUserHasLike(idproduct, user.ID_ACCOUNT) == true)
            {
                rs = "fail";
            }
            else
            {
                dao.addLike(user.ID_ACCOUNT, idproduct);
                string html = new LikeDAO().getNumberUserLike(user.ID_ACCOUNT).ToString();
                rs = html;
            }
            return Json(new { result = rs }, JsonRequestBehavior.AllowGet);
        }

        public ActionResult DeleteLike(string idproduct)
        {
            string rs = null;
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
                string html = new LikeDAO().getNumberUserLike(user.ID_ACCOUNT).ToString();
                rs = html;
            }
            return Json(new { result = rs }, JsonRequestBehavior.AllowGet);
        }
    }
}