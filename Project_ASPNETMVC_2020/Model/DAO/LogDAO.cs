using Project_ASPNETMVC_2020.Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Project_ASPNETMVC_2020.Model.DAO
{
    public class LogDAO

    {
        public void addLog(string controller, string action, string iduser, string ipaddress, string level, string message)
        {
            DBModel dBModel = new DBModel();
            log Log = new log();
            Log.CONTROLLER = controller;
            Log.ACTION = action;
            Log.LEVEL = level;
            Log.MESSAGE = message;
            if (iduser == null || iduser == "")
            {
                Log.IDACCOUNT = null;
            }
            else
            {
                Log.IDACCOUNT = iduser;
            }
            Log.IPADDRESS = ipaddress;
            Log.LEVEL = level;
            Log.CREATEAT = DateTime.Now;
            dBModel.logs.Add(Log);
            dBModel.SaveChanges();
        }
        public void removeLog()
        {

        }


    }
}