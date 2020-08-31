using Microsoft.Win32;
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
    public class ProductController : Controller
    {
        // GET: Admin/Product
        public ActionResult ViewProduct(string idproduct)
        {
            ProductDAO dao = new ProductDAO();
            if (idproduct != null)
            {
                var model = new ArrayList();
                var product = dao.getProductById(idproduct);
                model.Add(product);
                return View(model);
            }
            else
            {
                return View();
            }
        }
        public ActionResult ChangeProduct()
        {
            return View();
        }
        public ActionResult AddProduct()
        {
            return View();
        }


        public ActionResult ListProduct(string page)
        {
            var model = new ArrayList();
            int itemInOnePage = 20;
            int pageIndex;
            if (page == null)
            {
                pageIndex = 1;
            }
            else
            {
                pageIndex = Convert.ToInt32(page);
            }
            try
            {
                ProductDAO productdao = new ProductDAO();
                var listproduct = productdao.listAllProductWithPages(pageIndex, itemInOnePage);
                var totalRecord = productdao.totalRecordAll();
                if (listproduct == null)
                {
                    return RedirectToAction("Index", "Home");
                }
                model.Add(listproduct);
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
            }
            catch (Exception e)
            {
                return RedirectToAction("Index", "Home");
            }
            return View(model);
        }
        public ActionResult DeleteProduct(string idproduct)
        {
            User user = Session["User"] as User;
            ProductDAO dao = new ProductDAO();
            string rs = "";
            if (user == null || user.LEVEL.Equals("10") == false)
            {
                rs = "user";
            }
            else
            {
                var check = dao.deleteProduct(idproduct);
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