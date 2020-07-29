using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.DynamicData;
using Project_ASPNETMVC_2020.Model.EF;

namespace Project_ASPNETMVC_2020.Model.DAO
{
    public class BrandDAO
    {
        DBModel dbmodel = null;
        public BrandDAO()
        {
            dbmodel = new DBModel();
        }
       
    }
}