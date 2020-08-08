using Project_ASPNETMVC_2020.Model.Code;
using Project_ASPNETMVC_2020.Model.EF;
using System;
using System.Collections.Generic;
using System.Data.Entity.Migrations.Model;
using System.Linq;
using System.Web;

namespace Project_ASPNETMVC_2020.Model.DAO
{
    public class MailPasswordDAO
    {
        public bool checkKeyValid(string key)
        {
            DBModel dBModel = new DBModel();
            var check = dBModel.mailpasswords.Where(x => x.key == key).SingleOrDefault();
            if (check == null)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
        public bool addKey(string iduser, string key)
        {
            isUserHasKey(iduser);
            if (isExistsKey(key) == true)
            {
                return false;
            }
            else
            {
                DBModel dBModel = new DBModel();
                mailpassword mp = new mailpassword();
                mp.ID_ACCOUNT = iduser;
                mp.key = key;
                dBModel.mailpasswords.Add(mp);
                dBModel.SaveChanges();
                return true;
            }
          
        }
        public void isUserHasKey(string iduser)
        {
            DBModel dBModel = new DBModel();
            var check = dBModel.mailpasswords.Where(u => u.ID_ACCOUNT == iduser).SingleOrDefault();
            if (check != null)
            {
                dBModel.mailpasswords.Attach(check);
                dBModel.mailpasswords.Remove(check);
                dBModel.SaveChanges();
            }
          
        }
        public bool isExistsKey(string key)
        {
            DBModel dBModel = new DBModel();
            var check = dBModel.mailpasswords.Where(u => u.key == key).SingleOrDefault();
            if (check != null)
            {
                return true;
            }
            else
            {
                return false;
            }
        }


    }
}