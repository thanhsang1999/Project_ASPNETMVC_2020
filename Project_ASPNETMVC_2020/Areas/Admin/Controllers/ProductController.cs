using Microsoft.Ajax.Utilities;
using Microsoft.Win32;
using Project_ASPNETMVC_2020.Areas.Admin.Model.DAO;
using Project_ASPNETMVC_2020.Areas.Admin.Model.Form;
using Project_ASPNETMVC_2020.Areas.Admin.Tools;
using Project_ASPNETMVC_2020.Model.ModelOfSession;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Project_ASPNETMVC_2020.Areas.Admin.Controllers
{
    public class ProductController : Controller
    {
        // GET: Admin/Product
        public ActionResult FormProduct(string id)
        {
            ProductDAO dao = new ProductDAO();

            ViewBag.ID = "";
            ViewBag.Brands = dao.listBrands();
            ViewBag.Rams = dao.listRams();
            ViewBag.Memorys = dao.listMemory();
            ViewBag.HeDieuHanhs = dao.listHDH();
            ViewBag.IsChange = "Sửa Sản Phẩm";
            if (id != null || dao.getProductById(id) != null)
            {
                ViewBag.ID = id;
                var model = dao.getProductById(id);
                return View(model);
            }
            else
            {
                ViewBag.ID = "noproduct";
                ViewBag.IsChange = "Đăng Sản Phẩm";
                return View();
            }
        }
        public ActionResult ChangeProduct()
        {
            return View();
        }
        [HttpPost]
        public ActionResult AddProduct(FormAddProduct form)
        {
            string rs = "";
            string error = "";
            string nameproduct = form.nameproduct;
            string hedieuhanh = form.hedieuhanh;
            string brand = form.brand;
            string memory = form.memory;
            string ram = form.ram;
            string price = form.price;
            string amount = form.amount;
            string salerate = form.salerate;
            string description = form.description;          
            HttpPostedFileBase image1 = form.image1;
            HttpPostedFileBase image2 = form.image2;
            HttpPostedFileBase image3 = form.image3;
            List<string> checkNullString = new List<string>();
            checkNullString.Add(nameproduct);
            checkNullString.Add(hedieuhanh);
            checkNullString.Add(brand);
            checkNullString.Add(memory);
            checkNullString.Add(ram);
            checkNullString.Add(price);
            checkNullString.Add(amount);
            checkNullString.Add(salerate);
            checkNullString.Add(description);
            List<string> checkNum = new List<string>();
            checkNum.Add(memory);
            checkNum.Add(ram);
            checkNum.Add(price);
            checkNum.Add(amount);
            checkNum.Add(salerate);
            List<HttpPostedFileBase> listFiles = new List<HttpPostedFileBase>();
            listFiles.Add(image1);
            listFiles.Add(image2);
            listFiles.Add(image3);


            if (Tools.Tools.checkNullList(checkNullString) == false)
            {
                rs = "null";
                error = "";
            }
            else if (Tools.Tools.checkNumList(checkNum) == false)
            {
                rs = "number";
            }
            else if (image1 == null || image2 == null || image3 == null)
            {
                rs = "filenull";

            }
            else if (Tools.Tools.checkFileNull(listFiles) == false)
            {
                rs = "filenull";
            }
            else if (Tools.Tools.checkFileImage(listFiles) == false)
            {
                rs = "notimage";
            }
            else
            {
                description = (Tools.Tools.DecodeUrlString(form.description));
                description = Tools.Tools.ExtractText(description);
                ProductDAO dao = new ProductDAO();
                dao.addProduct(form, listFiles, description);
                rs = "success";
            }
            return Json(new { result = rs, error = error }, JsonRequestBehavior.DenyGet);
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