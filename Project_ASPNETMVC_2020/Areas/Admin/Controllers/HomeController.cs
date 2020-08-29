using Project_ASPNETMVC_2020.Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;


namespace Admin_MVC.Controllers
{
    public class HomeController : Controller
    {
         DBModel db  = new DBModel();
        public ActionResult ListSP()
        {
            string Chuoi = "";
            var product = (from p in db.products select p).ToList();
            for (int i = 0; i < product.Count; i++)
            {
                Chuoi += "<tr class=\"even pointer\">";
                Chuoi += "<td class=\"a -center \">";
                Chuoi += "<div class=\"icheckbox_flat -green\" style=\"position: relative;\">";
                Chuoi += "<input type = \"checkbox\" class=\"flat\" name=\"table_records\" style=\"position: absolute; opacity: 0;\"><ins class=\"iCheck-helper\" style=\"position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;\"></ins>";
                Chuoi += "</div>";
                Chuoi += "</td>";
                Chuoi += "<td class=\" \">" + product[i].ID_PRODUCT + "</td>";
                Chuoi += "<td class=\" \">" + product[i].NAME + " </td>";
                Chuoi += "<td class=\" \">" + product[i].ID_BRAND + "</td>";
                Chuoi += "<td class=\" \">" + product[i].PRICE + " đ</td>";
                Chuoi += "<td class=\" \"><img class=\"img-danh-sach-san-pham\" src=\"" + product[i].IMG +"\" width=\"30pixel\" height=\"30\" alt=\"\"> </td>";
                Chuoi += "<td class=\"a-right a-right \">"+ product[i].AMOUNT+"</td>";
                Chuoi += "<td class=\" last\">";
                Chuoi += "<a href = \"#\" > View </a>";
                Chuoi += "<a href=\"\"><i class=\"fas fa-trash-alt\"></i></a>";
                Chuoi += "<a href = \"\" ><i class=\"far fa-edit\"></i></a></td></tr>"; 
               
            }
            ViewBag.ListP = Chuoi;
            return View();
        }

        public ActionResult ListUser()
        {
            string St = "";
            var query1 = (from a in db.accounts select a).Take(20).ToList();
            var query2 = (from b in db.ct_account select b).Take(20).ToList();
            for (int i = 0; i < query1.Count; i++)
            {
                for ( i = 0; i < query2.Count; i++)
                {
                   
                    St += "<tr class=\"even pointer\">";
                    St += "<td class=\"a-center \">";
                    St += "<div class=\"icheckbox_flat-green\" style=\"position: relative;\">";
                    St += "<input type = \"checkbox\" class=\"flat\" name=\"table_records\" style=\"position: absolute; opacity: 0;\">";
                    St += " <ins class=\"iCheck-helper\" style=\"position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;\"></ins>  </div></td>";

                    St += "<td>" + query1[i].ID_ACCOUNT + "</td>";
                    St += "<td>"+ query1[i].HO_TEN+"</td>";
                    St += "<td>"+ query1[i].USERNAME+"</td>";
                    St += "<td>"+ query2[i].EMAIL+"</td>";
                    St += "<td class=\"giua\"><i class=\"fas fa-user\"></i> "+ query1[i].LEVEL+"</td>";
                    St += "<td class=\"a -right a-right \"> <i class=\"fas fa-circle green\"></i> "+query1[i].ACTIVE+"</td>";
                    St += "<td class=\"giua\"><a href = \"\" ><i class=\"far fa-edit\"></i></a></td>";
                    St += "<td class=\"giua\"><a href = \"\" ><i class=\"far fa-edit\"></i></a></td>";
                    St += "<td class=\"last\">";
                    St += "<a href = \"#\" id=\"oke\"><i class=\"fas fa-trash-alt ok\"></i></a> </td>";
                }
            }
            ViewBag.ListU = St; 
            return View();
        }
        public ActionResult DangKy()
        {
            return View();
        }

        public ActionResult AddRam()
        {
            return View();
        }
        public ActionResult AddRom()
        {
            return View();
        }

        public ActionResult AddThuongHieu()
        {
            return View();
        }

        public ActionResult PostSP()
        {
            return View();
        }

        public ActionResult QLDonHang()
        {
            return View();
        }

        public ActionResult SuaSP()
        {
            return View();
        }

        public ActionResult SuaUser()
        {
            return View();
        }
        public ActionResult ThemUser()
        {
            return View();
        }
        public ActionResult XemUser()
        {
            return View();
        }
        public ActionResult Page_403()
        {
            return View();
        }
        public ActionResult Page_404()
        {
            return View();
        }
        public ActionResult Page_500()
        {
            return View();
        }

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult DangNhap()
        {
            return View();
        }
        public ActionResult Plain()
        {
            return View();
        }
       
    }
}