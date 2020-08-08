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
        public void addKey(string iduser,string key)
        {

        }

       
    }
}