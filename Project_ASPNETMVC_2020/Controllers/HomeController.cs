using Project_ASPNETMVC_2020.Model;
using Project_ASPNETMVC_2020.Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using Project_ASPNETMVC_2020.Model.ModelOfSession;
using System.Web.UI.WebControls;
using Project_ASPNETMVC_2020.Model.DAO;
using Project_ASPNETMVC_2020.Model.Code;
using Microsoft.Ajax.Utilities;
using System.Web.Helpers;
using System.Web.Management;
using Project_ASPNETMVC_2020.Filter;
using Project_ASPNETMVC_2020.ClassToConfig;

namespace Project_ASPNETMVC_2020.Controllers
{
    public class HomeController : Controller
    {
        DBModel dbmodel = new DBModel();
        [LogFilter(param =LevelLog.INFO)]
        public ActionResult Index()
        {
            return View();

        }

        [LogFilter(param = LevelLog.INFO)]
        [HttpPost]
        public ActionResult Login(UserLogin user)
        {
            string status;
            string UserName = user.UNAME;
            string Password = user.PASS;
            UserDAO userDAO = new UserDAO();

            if (UserName == "" || Password == "")
            {
                status = "emtpy";
               
                return new JsonResult { Data = new { status = status } };
            }
            else if (userDAO.checkAccount(UserName, Tools.MD5(Password)) == false)
            {
                status = "fail";
                ViewBag.LevelLog = LevelLog.ALERT;
                return new JsonResult { Data = new { status = status } };
            }
            else
            {
                UserViewModel userVM = userDAO.getUser(userDAO.getID(UserName));
                HttpContext.Session.Add("User", userVM);
                status = "success";
                ViewBag.LevelLog = LevelLog.INFO;
                return new JsonResult { Data = new { status = status } };
            }
        }
        [HttpPost]
        public ActionResult Signup(FormSignup signup)
        {
            string status;
            string UserName = signup.dkUserName;
            string Email = signup.dkEmail;
            string Name = signup.dkName;
            string Password1 = signup.dkPass1;
            string Password2 = signup.dkPass2;
            UserDAO userDAO = new UserDAO();

            if (UserName == "" || Email == "" || Name == "" || Password1 == "" || Password2 == "")
            {
                status = "empty";
                return new JsonResult { Data = new { status = status } };
            }
            else if (UserName.Length < 6)
            {
                status = "userlength";
                return new JsonResult { Data = new { status = status } };
            }
            else if (userDAO.checkUsered(UserName))
            {
                status = "user";
                return new JsonResult { Data = new { status = status } };
            }
            else if (!Tools.IsValidEmail(Email))
            {
                status = "email";
                return new JsonResult { Data = new { status = status } };
            }
            else if (Password1.Length < 8)
            {
                status = "passlength";
                return new JsonResult { Data = new { status = status } };
            }
            else if (!Password1.Equals(Password2))
            {
                status = "pass";
                return new JsonResult { Data = new { status = status } };
            }
            else
            {
                DBModel db1 = new DBModel();
                account tmpAccount = new account();
                tmpAccount.USERNAME = UserName;
                tmpAccount.HO_TEN = Name;
                tmpAccount.ID_ACCOUNT = userDAO.generateIDAccount();
                tmpAccount.PASSWORD = Tools.MD5(Password1);
                tmpAccount.LEVEL = "5";
                tmpAccount.ACTIVE = "1";
                db1.accounts.Add(tmpAccount);
                db1.SaveChangesAsync();
                DBModel db2 = new DBModel();
                ct_account tmpCTAccount = new ct_account();
                tmpCTAccount.ID_ACCOUNT = tmpAccount.ID_ACCOUNT;
                tmpCTAccount.EMAIL = Email;
                tmpCTAccount.SDT = null;
                tmpCTAccount.DIA_CHI = null;
                tmpCTAccount.GIOI_TINH = 1;
                tmpCTAccount.NGAY_SINH = null;
                db2.ct_account.Add(tmpCTAccount);
                db2.SaveChangesAsync();
                UserViewModel userVM = userDAO.getUser(userDAO.getID(UserName));
                HttpContext.Session.Add("User", userVM);
                status = "success";
                ViewBag.
                return new JsonResult { Data = new { status = status } };
            }
        }
        [HttpPost]
        public JsonResult SignupVer2(FormSignup form)
            
        {
            // get data
            string statustemp;
            string UserName = form.dkUserName;
            string Email = form.dkEmail;
            string Name = form.dkName;
            string Password1 = form.dkPass1;
            string Password2 = form.dkPass2;
            UserDAO userDAO = new UserDAO();
            // tra ve
            string errUserName = form.checkUserName(UserName);
            string errEmail = form.checkEmail(Email);
            string errFullName = form.checkFullName(Name);
            string errPass1 = form.checkPass1(Password1);
            string errPass2 = form.checkPass2(Password1, Password2);

            if(!errUserName.Equals("") || !errEmail.Equals("") || !errFullName.Equals("") || !errPass1.Equals("") || !errPass2.Equals(""))
            {
                statustemp = "fail";
            }
            else
            {
                statustemp = "success";
            }
            if(statustemp== "success")
            {
                DBModel db1 = new DBModel();
                account tmpAccount = new account();
                tmpAccount.USERNAME = UserName;
                tmpAccount.HO_TEN = Name;
                tmpAccount.ID_ACCOUNT = userDAO.generateIDAccount();
                tmpAccount.PASSWORD = Password1;
                tmpAccount.LEVEL = "5";
                tmpAccount.ACTIVE = "1";
                db1.accounts.Add(tmpAccount);
                db1.SaveChangesAsync();
                DBModel db2 = new DBModel();
                ct_account tmpCTAccount = new ct_account();
                tmpCTAccount.ID_ACCOUNT = tmpAccount.ID_ACCOUNT;
                tmpCTAccount.EMAIL = Email;
                tmpCTAccount.SDT = null;
                tmpCTAccount.DIA_CHI = null;
                tmpCTAccount.GIOI_TINH = 1;
                tmpCTAccount.NGAY_SINH = null;
                db2.ct_account.Add(tmpCTAccount);
                db2.SaveChangesAsync();
                UserViewModel userVM = userDAO.getUser(userDAO.getID(UserName));
                HttpContext.Session.Add("User", userVM);
            }
            return  Json(new { status= statustemp, errusername= errUserName, erremail= errEmail,errfullname= errFullName,errpass1= errPass1,errpass2=errPass2 }, JsonRequestBehavior.DenyGet);
        }
        [HttpGet]
        public ActionResult LogOut()
        {
            FormsAuthentication.SignOut();
            Session.Clear();
            Session.Abandon();
            return PartialView("Heade   r", new DBModel());
        }
    }
}