﻿using Microsoft.Ajax.Utilities;
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

        public static User loadUserID(string idAccount)
        {
            DBModel db = new DBModel();
            var result = from a in db.accounts
                         join b in db.ct_account
                         on a.ID_ACCOUNT equals b.ID_ACCOUNT
                         where a.ID_ACCOUNT == idAccount
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
            return result.ToList()[0];
        }
        public static void DeleteAccountByID(string idAccount)
        {
            DBModel db = new DBModel();
            var tmp1 = db.accounts.Where(x => x.ID_ACCOUNT.Equals(idAccount)).FirstOrDefault();
            db.accounts.Attach(tmp1);
            db.accounts.Remove(tmp1);
            db.SaveChangesAsync();
            DBModel db2 = new DBModel();
            var tmp2 = db2.ct_account.Where(x => x.ID_ACCOUNT.Equals(idAccount)).FirstOrDefault();
            db2.ct_account.Attach(tmp2);
            db2.ct_account.Remove(tmp2);
            db2.SaveChangesAsync();
        }
        public static bool checkAccount(string idAccount)
        {
            DBModel db = new DBModel();
            var tmp1 = db.accounts.Where(x => x.ID_ACCOUNT.Equals(idAccount)).FirstOrDefault();
            DBModel db2 = new DBModel();
            var tmp2 = db2.ct_account.Where(x => x.ID_ACCOUNT.Equals(idAccount)).FirstOrDefault();
            if (tmp1.ID_ACCOUNT==null)
            {
                return false;
            }else if (tmp1.ID_ACCOUNT == null)
            {
                return false;
            }else
            {
                return true;
            }
        }
    }
}