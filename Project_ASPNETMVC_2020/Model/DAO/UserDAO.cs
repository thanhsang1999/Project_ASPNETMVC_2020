﻿using Project_ASPNETMVC_2020.Model.EF;
using Project_ASPNETMVC_2020.Model.ModelOfSession;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Management;

namespace Project_ASPNETMVC_2020.Model.DAO
{
    public class UserDAO
    {
        DBModel db;

        public UserDAO()
        {
            this.db = new DBModel();
        }
        public ModelOfSession.User getUser(string id)
        {
            var tmp = from a in db.accounts join b in db.ct_account
                        on a.ID_ACCOUNT equals b.ID_ACCOUNT
                        where a.ID_ACCOUNT == id
                        select new ModelOfSession.User {
                            ID_ACCOUNT = a.ID_ACCOUNT,
                            USERNAME= a.USERNAME,
                            PASSWORD= a.PASSWORD,
                            HO_TEN= a.HO_TEN,
                            LEVEL= a.LEVEL,
                            ACTIVE= a.ACTIVE,
                            EMAIL= b.EMAIL,
                            SDT= b.SDT,
                            DIA_CHI= b.DIA_CHI,
                            GIOI_TINH= b.GIOI_TINH,
                            NGAY_SINH= b.NGAY_SINH
                            };
            return tmp.ToList()[0];
        }
        public string getID(string username)
        {
            var tmp = db.accounts.Where(x => x.USERNAME.Equals(username)).FirstOrDefault();
            return tmp.ID_ACCOUNT;
        }
        /**
         * Kiểm tra xem UserName đã có trong database hay chưa
         */
        public bool checkUsered(string username)
        {
            var tmp = db.accounts.Count(x => x.USERNAME.Equals(username));
            if (tmp >= 1)
            {
                return true;
            }
            else
            {
                return false;
            }

        }
        public bool checkAccount(string username,string password)
        {
            var tmp = db.accounts.Count(x => x.USERNAME.Equals(username)&&x.PASSWORD.Equals(password));
            if (tmp == 1)
            {
                return true;
            }
            else
            {
                return false;
            }

        }
        public string generateIDAccount() {
            var tmp = db.accounts;
            int tmpInt = 0;
            foreach(account item in tmp)
            {
                int intCurrent = int.Parse(item.ID_ACCOUNT.Substring(2));
                if (tmpInt <= intCurrent)
                {
                    tmpInt = intCurrent;
                }
                    
            }
            return "TK"+(tmpInt+1);
        }
    }
}