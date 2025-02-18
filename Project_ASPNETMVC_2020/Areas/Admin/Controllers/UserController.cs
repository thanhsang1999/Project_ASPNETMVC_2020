﻿using Project_ASPNETMVC_2020.Areas.Admin.Model.DAO;
using Project_ASPNETMVC_2020.ClassToConfig;
using Project_ASPNETMVC_2020.Filter;
using Project_ASPNETMVC_2020.Model.Code;
using Project_ASPNETMVC_2020.Model.EF;
using Project_ASPNETMVC_2020.Model.ModelOfSession;
using Project_ASPNETMVC_2020.Model.User;
using System.Collections;
using System.Linq;
using System.Web.Mvc;

namespace Project_ASPNETMVC_2020.Areas.Admin.Controllers
{
    [LogFilter(Order = 1)]
    public class UserController : Controller
    {
        // GET: Admin/User
        [AuthFilter(roleIsRequired = LevelAuth.Admin, Order = 0)]
        public ActionResult Index()
        {
            User user = Session["User"] as User;
            if (user != null && user.LEVEL.Equals("10"))
            {
                ArrayList model = new ArrayList();
                var listUser = UserDAO.LoadListUser();
                model.Add(listUser);
                return View(model);
            }
            else
            {
                return RedirectToAction("Index", "Home", new { area = "" });
            }
           
        }
        [AuthFilter(roleIsRequired = LevelAuth.Admin, Order = 0)]
        public ActionResult Infomation(string IdAccount) {
            User user = Session["User"] as User;
            if (user != null && user.LEVEL.Equals("10"))
            {
                ArrayList model = new ArrayList();
                var User1 = UserDAO.loadUserID(IdAccount);
                model.Add(User1);
                return View(model);
            }
            else
            {
                return RedirectToAction("Index", "Home", new { area = "" });
            }
        }
        [HttpPost]
        public ActionResult FormDataAccount(FormDataAccount data)
        {
            User user = Session["User"] as User;
            if (user != null && user.LEVEL.Equals("10"))
            {
                string status;
                string Name = data.AName;
                string Email = data.AEmail;
                string SDT = data.ASDT;
                string DiaChi = data.ADiaChi;
                string GioiTinh = data.Agioitinh;
                string NgaySinh = data.date;
                string Idaccount = data.AIdAccount;
                if (Name == null || Email == null || SDT == null || DiaChi == null || GioiTinh == null || NgaySinh == "" || Name == "" || Email == "" || SDT == "" || DiaChi == "" || GioiTinh == "" || NgaySinh == "" || Idaccount == null || Idaccount == "")
                {
                    status = "empty";
                    return new JsonResult { Data = new { status = status } };
                }
                else if (Tools.IsValidEmail(Email) == false)
                {
                    status = "email";
                    return new JsonResult { Data = new { status = status } };
                }
                else if (Tools.IsNumberPhone(SDT) == false)
                {
                    status = "phone";
                    return new JsonResult { Data = new { status = status } };
                }
                else
                {
                    DBModel db1 = new DBModel();
                    var TmpUser = db1.accounts.Where(x => x.ID_ACCOUNT.Equals(Idaccount)).FirstOrDefault();
                    TmpUser.HO_TEN = Name;
                    db1.SaveChangesAsync();
                    DBModel db2 = new DBModel();
                    var TmpCTUser = db2.ct_account.Where(x => x.ID_ACCOUNT.Equals(Idaccount)).FirstOrDefault();
                    TmpCTUser.EMAIL = Email;
                    TmpCTUser.SDT = SDT;
                    TmpCTUser.DIA_CHI = DiaChi;
                    TmpCTUser.GIOI_TINH = int.Parse(GioiTinh);
                    TmpCTUser.NGAY_SINH = Tools.toDateTime(NgaySinh);
                    db2.SaveChangesAsync();
                    status = "success";
                    return new JsonResult { Data = new { status = status } };
                }
            }
            else
            {
                return RedirectToAction("Index", "Home", new { area = "" });
            }
            
        }
        [AuthFilter(roleIsRequired = LevelAuth.Admin, Order = 0)]
        public ActionResult LevelAccount(string IdAccount)
        {
            User user = Session["User"] as User;
            if (user != null && user.LEVEL.Equals("10"))
            {
                ArrayList model = new ArrayList();
                var User1 = UserDAO.loadUserID(IdAccount);
                model.Add(User1);
                return View(model);
            }
            else
            {
                return RedirectToAction("Index", "Home", new { area = "" });
            }
        }
        [HttpPost]
        public ActionResult FormLevelAccount(FormDataLevelAccount data)
        {
            User user = Session["User"] as User;
            if (user != null && user.LEVEL.Equals("10"))
            {
                string status;
                string Idaccount = data.Lidaccount;
                string Active = data.Lactive;
                string Level = data.Llevel;
                if (Idaccount == null || Active == null || Level == null || Idaccount == "" || Active == "" || Level == "")
                {
                    status = "empty";
                    return new JsonResult { Data = new { status = status } };
                }
                else
                {
                    DBModel db1 = new DBModel();
                    var TmpUser = db1.accounts.Where(x => x.ID_ACCOUNT.Equals(Idaccount)).FirstOrDefault();
                    TmpUser.LEVEL = Level;
                    TmpUser.ACTIVE = Active;
                    db1.SaveChangesAsync();
                    status = "success";
                    return new JsonResult { Data = new { status = status } };
                }
            }
            else
            {
                return RedirectToAction("Index", "Home", new { area = "" });
            }
            
        }
        [HttpPost]
        public ActionResult DeleteAccount(string idAccount)
        {
            string status;
            User user = Session["User"] as User;
            if (user != null && user.LEVEL.Equals("10"))
            {
                if (UserDAO.checkAccount(idAccount))
                {
                UserDAO.DeleteAccountByID(idAccount);
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