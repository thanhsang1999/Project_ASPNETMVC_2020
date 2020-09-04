using Project_ASPNETMVC_2020.Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Project_ASPNETMVC_2020.Areas.Admin.ToolsAdmin;

namespace Project_ASPNETMVC_2020.Areas.Admin.Model.DAO
{
    public class RamDAO
    {
        public bool checkExit(int ram)
        {
            var check = false;
            foreach (ram item in getAllRam())
            {
                if (item.RAM1 == ram)
                {
                    check = true;
                    return check;
                }
            }
            return check;
        }
        public List<ram> getAllRam()
        {
            DBModel dBModel = new DBModel();
            return dBModel.rams.OrderBy(x=>x.RAM1).ToList();
        }
        public bool addRam(int ram)
        {
            try
            {
                DBModel dBModel = new DBModel();
                ram r = new ram();
                r.RAM1 = ram;
                dBModel.rams.Add(r);
                dBModel.SaveChanges();
                return true;
            }
            catch (Exception e)
            {
                return false;
            }


        }
        public bool delRam(int ram)
        {
            try
            {
                DBModel dBModel = new DBModel();
                ram r = dBModel.rams.Where(x => x.RAM1 == ram).FirstOrDefault();
                if (r != null)
                {
                    dBModel.rams.Attach(r);
                    dBModel.rams.Remove(r);
                    dBModel.SaveChanges();
                    return true;
                }
                else
                {
                    return false;
                }
                
                
            }
            catch (Exception e)
            {
                return false;
            }


        }
    }
}