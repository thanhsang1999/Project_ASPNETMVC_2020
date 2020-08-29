using Project_ASPNETMVC_2020.Model;
using Project_ASPNETMVC_2020.Model.EF;
using System;
using System.Web.Mvc;
using System.Web.Security;
using Project_ASPNETMVC_2020.Model.ModelOfSession;
using System.Web.UI.WebControls;
using Project_ASPNETMVC_2020.Model.DAO;
using Project_ASPNETMVC_2020.Model.Code;
using Project_ASPNETMVC_2020.Filter;
using Project_ASPNETMVC_2020.ClassToConfig;
using Microsoft.Ajax.Utilities;
using System.Collections;

namespace Project_ASPNETMVC_2020.Controllers
{
    [LogFilter]
    public class HomeController : Controller
    {
        DBModel dbmodel = new DBModel();
        public ActionResult Index()
        {
            return View();
        }
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
                // nếu ko có viewbag levellog thì sẽ lưu xuống database là info
                ViewBag.LevelLog = LevelLog.ALERT;
                // nếu ko có viewbag messagelog thì sẽ lưu xuống database là OK
                ViewBag.MessageLog = "Login empty";
                return new JsonResult { Data = new { status = status } };
            }
            else if (userDAO.checkAccount(UserName, Tools.MD5(Password)) == false)
            {
                status = "fail";
                // nếu ko có viewbag levellog thì sẽ lưu xuống database là info

                ViewBag.LevelLog = LevelLog.ALERT;
                // nếu ko có viewbag messagelog thì sẽ lưu xuống database là OK

                ViewBag.MessageLog = "Login fail";
                return new JsonResult { Data = new { status = status } };
            }
            else
            {
                User userVM = userDAO.getUser(userDAO.getID(UserName));
                HttpContext.Session.Add("User", userVM);
                status = "success";
                // thành công thì có thể ko cần phải ghi LevelLog và MessageLog
                ViewBag.LevelLog = LevelLog.INFO;
                ViewBag.MessageLog = "Login OK";
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

            if(UserName==""|| Email == "" || Name == "" || Password1 == "" || Password2 == "")
            {
                status = "empty";
                return new JsonResult { Data = new { status = status } };
            }
            else if (UserName.Length<6)
            {
                status = "userlength";
                return new JsonResult { Data = new { status = status } };
            }
            else if (userDAO.checkUsered(UserName))
            {
                status = "user";
                return new JsonResult { Data = new { status = status } };
            }else if (!Tools.IsValidEmail(Email))
            {
                status = "email";
                return new JsonResult { Data = new { status = status } };
            }
            else if (Password1.Length<8)
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
                User userVM = userDAO.getUser(userDAO.getID(UserName));
                HttpContext.Session.Add("User", userVM);
                status = "success";
                return new JsonResult { Data = new { status = status } };
            }
        }
        public ActionResult LogOut()
        {
            FormsAuthentication.SignOut();
            Session.Clear();
            Session.Abandon();
            return RedirectToAction("Index", "Home");
        }
        public ActionResult ForgotPassWord(string username)
        {
            string rs = "";
            string email;
            if (new UserDAO().checkUsered(username) == false)
            {
                rs = "Tên tài khoản không tồn tại";
            }
            else if ((email = new UserDAO().getEmailOfUser(username)) != null)
            {
                string iduser = new UserDAO().getIdByUserName(username);
                Mail mail = new Mail();
                var key = mail.RandomPassword();
               
                MailPasswordDAO mpd = new MailPasswordDAO();
                var check = mpd.addKey(iduser, key);
                while (check == false)
                {
                    key = mail.RandomPassword();
                    check = mpd.addKey(iduser, key);
                }
                new UserDAO().ChangePasswordById(iduser, key);
                bool check2 = mail.sendMail(email, key);
                if (check2==false)
                {
                    rs = "Gửi mail thất bại";
                }
                else
                {
                    rs = "gửi mail thành công";
                }
            }
            else
            {
                rs = "Gửi mail thất bại";
            }
            return Json(new { result = rs });
        }
        public ActionResult ShowPassWord(string key)
        {
            if(new MailPasswordDAO().isExistsKey(key) == false)
            {
                return RedirectToAction("Index", "Home");
            }
            else

            {
                ViewBag.Key = key;
                return View();
            }
        }
    
        public ActionResult DealsOfTheWeek()
        {
            ArrayList model = new ArrayList();
            var products = HomeDAO.LoadProductDealsOfTheWeek();
            model.Add(products);
            return PartialView(model);
        }
        public ActionResult Featured()
        {
            ArrayList model = new ArrayList();
            var special = HomeDAO.LoadProductSpecial();
            var discount = HomeDAO.LoadProductDiscount();
            var bestSell = HomeDAO.LoadProductBestSell();
            model.Add(special);
            model.Add(discount);
            model.Add(bestSell);
            return PartialView(model);
        }
    }
}