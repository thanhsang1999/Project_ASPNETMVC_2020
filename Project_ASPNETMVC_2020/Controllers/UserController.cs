using Project_ASPNETMVC_2020.Filter;
using Project_ASPNETMVC_2020.Model.Code;
using Project_ASPNETMVC_2020.Model.DAO;
using Project_ASPNETMVC_2020.Model.EF;
using Project_ASPNETMVC_2020.Model.ModelOfSession;
using Project_ASPNETMVC_2020.Model.User;
using System;
using System.Globalization;
using System.Linq;
using System.Web.Mvc;

namespace Project_ASPNETMVC_2020.Controllers
{
    [LogFilter(Order = 1)]
    public class UserController : Controller
    {
        // GET: User
        public ActionResult Index()
        {
            var user = Session["User"] as User;
            if (user == null)
            {
                return RedirectToAction("Index", "Home");
            }
            else
            {
            return View();
            }
        }
        [HttpPost]
        public ActionResult FormDataUser(FormDataUser data)
        {
            string status;
            string Name = data.UName;
            string Email = data.UEmail;
            string SDT = data.USDT;
            string DiaChi = data.UDiaChi;
            string GioiTinh = data.Ugioitinh;
            string NgaySinh = data.date;
            if (Name == null|| Email == null || SDT == null || DiaChi == null || GioiTinh == null || NgaySinh == null)
            {
                status = "empty";
                return new JsonResult { Data = new { status = status } };
            }
            else if (Tools.IsValidEmail(Email)==false)
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
                var user = Session["User"] as User;
                DBModel db1 = new DBModel();
                var TmpUser = db1.accounts.Where(x=>x.ID_ACCOUNT.Equals(user.ID_ACCOUNT)).FirstOrDefault();
                TmpUser.HO_TEN = Name;
                db1.SaveChangesAsync();
                DBModel db2 = new DBModel();
                var TmpCTUser = db2.ct_account.Where(x => x.ID_ACCOUNT.Equals(user.ID_ACCOUNT)).FirstOrDefault();
                TmpCTUser.EMAIL = Email;
                TmpCTUser.SDT = SDT;
                TmpCTUser.DIA_CHI = DiaChi;
                TmpCTUser.GIOI_TINH = int.Parse(GioiTinh);
                TmpCTUser.NGAY_SINH = Tools.toDateTime(NgaySinh);
                db2.SaveChangesAsync();
                UserDAO userDAO = new UserDAO();
                User userVM = userDAO.getUser(user.ID_ACCOUNT);
                HttpContext.Session.Add("User", userVM);
                status = "success";
                return new JsonResult { Data = new { status = status } };
            }
        }
        public ActionResult DoiMK()
        {
            var user = Session["User"] as User;
            if (user == null)
            {
                return RedirectToAction("Index", "Home");
            }
            else
            {
                return View();
            }
        }
        public ActionResult FormDoiMK(FormPass formPass)
        {
            var user = Session["User"] as User;
            string status;
            string OldPassword = formPass.oldpass;
            string Password1 = formPass.pass1;
            string Password2 = formPass.pass2;
            if (Password1 == "" || Password2 == "")
            {
                status = "empty";
                return new JsonResult { Data = new { status = status } };
            }
            else if (!Tools.MD5(OldPassword).Equals(user.PASSWORD))
            {
                status = "oldpass";
                return new JsonResult { Data = new { status = status } };
            }
            else if (Password1.Length<8)
            {
                status = "length";
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
                var TmpUser = db1.accounts.Where(x => x.ID_ACCOUNT.Equals(user.ID_ACCOUNT)).FirstOrDefault();
                TmpUser.PASSWORD = Tools.MD5(Password1);
                db1.SaveChangesAsync();
                UserDAO userDAO = new UserDAO();
                User userVM = userDAO.getUser(user.ID_ACCOUNT);
                HttpContext.Session.Add("User", userVM);
                status = "success";
                return new JsonResult { Data = new { status = status } };
            }
        }
    }
}