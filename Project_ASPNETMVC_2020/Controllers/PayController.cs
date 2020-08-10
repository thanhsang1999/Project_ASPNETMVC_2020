using Project_ASPNETMVC_2020.Model.Cart;
using Project_ASPNETMVC_2020.Model.Code;
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
    public class PayController : Controller
    {
        // GET: Pay
        public ActionResult Index()
        {
            User user = Session["User"] as User;
            var btndh = Session["btndh"];
            if (user != null && btndh!=null)
            {
                List<CartProductUser> listCPU = PayDAO.LoadDataPay(user.ID_ACCOUNT);
                ArrayList model = new ArrayList();
                model.Add(listCPU);
                var totalMoney = PayDAO.TotalMoneyOder(user.ID_ACCOUNT);
                model.Add(totalMoney);
                return View(model);
            }
            else
            {
                return RedirectToAction("Index", "Home");
            }
        }
        [HttpPost]
        public ActionResult LoadDataIntoCart(FormPay formPay)
        {
            User user = Session["User"] as User;
            string status;
            if (user != null)
            {
                var ten = formPay.HO_TEN;
                var diaChi = formPay.DIA_CHI;
                var sdt = formPay.SDT;
                if (ten==null|| diaChi == null || sdt == null || ten == "" || diaChi == "" || sdt == "")
                {
                    status = "fail";
                    var mess = "Vui Lòng Nhập Đây Đủ Thông Tin";
                    return new JsonResult { Data = new { status = status,mess } };
                }else if (Tools.IsNumberPhone(sdt) == false)
                {
                    status = "fail";
                    var mess = "Vui Lòng Nhập Đúng Số Điện Thoại";
                    return new JsonResult { Data = new { status = status, mess } };
                }
                else
                {
                    List<CartProductUser> listCPU  = PayDAO.LoadDataPay(user.ID_ACCOUNT);
                    listCPU[0].HO_TEN = ten;
                    listCPU[0].DIA_CHI = diaChi;
                    listCPU[0].SDT = sdt;
                    if (PayDAO.CreateNewOder(listCPU) == true)
                    {
                        HttpContext.Session.Remove("btndh");
                        if (PayDAO.deteleProductInCart(user.ID_ACCOUNT) == true)
                        {
                            status = "success";
                            return new JsonResult { Data = new { status = status } };
                        }
                        else
                        {
                            status = "fail";
                            var mess = "Lỗi Ngoại Lệ";
                            return new JsonResult { Data = new { status = status, mess } };
                        }
                    }
                    else
                    {
                        status = "fail";
                        var mess = "Lỗi Ngoại Lệ";
                        return new JsonResult { Data = new { status = status, mess } };
                    }
                }
            }
            else
            {
                status = "home";
                return new JsonResult { Data = new { status = status,url = Url.Action("Index", "Home") } };
            }
        }
    }
}