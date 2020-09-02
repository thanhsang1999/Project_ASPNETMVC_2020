using Antlr.Runtime;
using Microsoft.Ajax.Utilities;
using Microsoft.Win32;
using Project_ASPNETMVC_2020.Areas.Admin.ClassToConfig;
using Project_ASPNETMVC_2020.Areas.Admin.Model.DAO;
using Project_ASPNETMVC_2020.Areas.Admin.Model.Form;
using Project_ASPNETMVC_2020.Areas.Admin.ToolsAdmin;
using Project_ASPNETMVC_2020.ClassToConfig;
using Project_ASPNETMVC_2020.Filter;
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
        [AuthFilter(roleIsRequired = LevelAuth.Admin, Order = 0)]
        public ActionResult FormAddProduct()
        {
            ProductDAO dao = new ProductDAO();
            User user = Session["User"] as User;
            if (user == null || user.LEVEL.Equals("10") == false)
            {
                return RedirectToAction("Index", "Home", new { area = "" });
            }
            else
            {
                ViewBag.ID = "";
                ViewBag.Brands = dao.listBrands();
                ViewBag.Rams = dao.listRams();
                ViewBag.Memorys = dao.listMemory();
                ViewBag.HeDieuHanhs = dao.listHDH();
                ViewBag.IsChange = "Sửa Sản Phẩm";
                ViewBag.ID = "noproduct";
                ViewBag.IsChange = "Đăng Sản Phẩm";
                return View();

            }


        }
        public ActionResult FormChangeProduct(string id)
        {

            ProductDAO dao = new ProductDAO();
            var model = dao.getProductById(id);
            if (model != null)
            {
                ViewBag.Brands = dao.listBrands();
                ViewBag.Rams = dao.listRams();
                ViewBag.Memorys = dao.listMemory();
                ViewBag.HeDieuHanhs = dao.listHDH();
                var modelhasBrand = dao.hasBrand(model);
                var modelhasMemory = dao.hasMemory(model);
                var modelhasHDH = dao.hasHDH(model);
                var modelhasRam = dao.hasRam(model);
                ViewBag.hasBrand = modelhasBrand;
                ViewBag.hasRam = modelhasRam;
                ViewBag.hasMemory = modelhasMemory;
                ViewBag.hasHDH = modelhasHDH;
                return View(model);
            }
            else
            {
                return RedirectToAction("Index", "Home", new { area = "" });

            }

        }
        [HttpPost]
        public ActionResult AddProduct(FormProduct form)
        {
            string rs = "";
            ProductDAO dao = new ProductDAO();
            User user = Session["User"] as User;
            string idproduct = "";
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

            if (user == null || user.LEVEL.Equals("10") == false)
            {
                rs = "user";
            }
          
            else if (ToolsOfAdmin.checkNullList(checkNullString) == false)
            {
                rs = "null";

            }
            else if (ToolsOfAdmin.checkNumList(checkNum) == false)
            {
                rs = "number";
            }
            else if (image1 == null || image2 == null || image3 == null)
            {
                rs = "filenull";

            }
            else if (ToolsOfAdmin.checkFileNull(listFiles) == false)
            {
                rs = "filenull";
            }
            else if (ToolsOfAdmin.checkFileImage(listFiles) == false)
            {
                rs = "notimage";
            }
            else if (dao.checkExitNameProductForAdd(dao.generateNameProduct(form.nameproduct,form.brand))==false)
            {
                rs = "name";
            }
            else
            {
                description = ToolsOfAdmin.DecodeUrlString(form.description);
                description = ToolsOfAdmin.ExtractText(description);
               
                idproduct = dao.addProduct(form, listFiles, description);
                if (idproduct == "fail")
                {
                    rs = "fail";
                }
                else
                {
                    rs = "success";
                }

            }
            return Json(new { result = rs, idproduct = idproduct }, JsonRequestBehavior.DenyGet);
        }
        [HttpPost]
        public ActionResult ChangeProduct(FormUpdateProduct form)
        {
            ProductDAO dao = new ProductDAO();
            string rs = "";
            User user = Session["User"] as User;
            string idproduct = form.idproduct;
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
            Dictionary<int, HttpPostedFileBase> listFiles = new Dictionary<int, HttpPostedFileBase>();
            if (image1 != null)
            {
                listFiles.Add(1, image1);
            }
            if (image2 != null)
            {
                listFiles.Add(2, image2);
            }
            if (image3 != null)
            {
                listFiles.Add(3, image3);
            }

            if (user == null || user.LEVEL.Equals("10") == false)
            {
                rs = "user";
            }
            else if (ToolsOfAdmin.checkNullList(checkNullString) == false)
            {
                rs = "null";

            }
            else if (ToolsOfAdmin.checkNumList(checkNum) == false)
            {
                rs = "number";
            }else if(dao.checkExitNameProductForUp(dao.generateNameProduct(form.nameproduct, form.brand),idproduct) == false)
            {
                rs = "name";
            }
            else if (image1 != null && ToolsOfAdmin.IsImage(image1)==false)
            {
                rs = "notimage";
            }
            else if (image2 != null && ToolsOfAdmin.IsImage(image2)==false)
            {
                rs = "notimage";
            }
            else if (image3 != null && ToolsOfAdmin.IsImage(image3)==false)
            {
                rs = "notimage";
            }
            else
            {

                description = ToolsOfAdmin.DecodeUrlString(form.description);
                description = ToolsOfAdmin.ExtractText(description);
                
                idproduct = dao.updateProduct(form, listFiles, description);
                rs = "success";
            }
            return Json(new { result = rs, idproduct = idproduct }, JsonRequestBehavior.DenyGet);

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
                var check = dao.getProductById(idproduct);
                if (check == null)
                {
                    rs = "fail";
                }
                else
                {
                    HandleFile delete = new HandleFile();
                    delete.deleteImage(dao.getProductById(idproduct));
                    dao.deleteProduct(idproduct);
                    rs = "success";
                }
            }

            return Json(new { result = rs }, JsonRequestBehavior.AllowGet);
        }
    }
}