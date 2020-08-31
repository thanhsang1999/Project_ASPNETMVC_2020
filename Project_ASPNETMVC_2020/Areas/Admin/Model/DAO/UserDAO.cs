using Project_ASPNETMVC_2020.Model.EF;
using Project_ASPNETMVC_2020.Model.ModelOfSession;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Project_ASPNETMVC_2020.Areas.Admin.Model.DAO
{
    public static class UserDAO
    {
        public static List<User> LoadListUser()
        {
            DBModel db = new DBModel();
            var result = from a in db.accounts
                         join b in db.ct_account
                         on a.ID_ACCOUNT equals b.ID_ACCOUNT
                         select new User
                         {
                             ID_ACCOUNT = a.ID_ACCOUNT,
                             USERNAME = a.USERNAME,
                             PASSWORD = a.PASSWORD,
                             HO_TEN = a.HO_TEN,
                             LEVEL = a.LEVEL,
                             ACTIVE = a.ACTIVE,
                             EMAIL = b.EMAIL,
                             SDT = b.SDT,
                             DIA_CHI = b.DIA_CHI,
                             GIOI_TINH = b.GIOI_TINH,
                             NGAY_SINH = b.NGAY_SINH
                         };
            return result.ToList();
        }
    }
}