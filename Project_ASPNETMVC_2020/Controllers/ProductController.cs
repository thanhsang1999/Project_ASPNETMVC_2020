using Project_ASPNETMVC_2020.Model.DAO;
using Project_ASPNETMVC_2020.Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;

namespace Project_ASPNETMVC_2020.Controllers
{
    public class ProductController : Controller
    {
        // GET: Product
        DBModel dbmodel = new DBModel();

        public ActionResult ProductDetail(string id)
        {
            var product = new ProductDAO().productDetail(id);
            ViewBag.Title = product.NAME;
            var model = product;
            return View(model);
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
                return RedirectToAction("Home", "Index");
            }
            if (listProduct == null)
            {
                return RedirectToAction("Home", "Index");
            }
            ViewBag.pageIndex = pageIndex;
            ViewBag.totalRecord = totalRecord;
            ViewBag.maxPage = 10;
            int totalPage = 0;
            totalPage= (int)Math.Ceiling(((double)totalRecord / itemInOnePage));
            ViewBag.totalPage = totalPage;
            ViewBag.Frist = 1;
            ViewBag.Last = totalPage;
            ViewBag.Next = pageIndex == totalPage ? -1 : pageIndex + 1;
            ViewBag.Previous = pageIndex == 1 ? -1 : pageIndex - 1;
            ViewBag.Catogery = catogery==null?"":catogery;
            ViewBag.ID = id == null ? "" : id;
            return View(listProduct);
        }


    }
}