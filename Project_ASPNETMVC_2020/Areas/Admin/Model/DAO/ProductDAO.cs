using Project_ASPNETMVC_2020.Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Project_ASPNETMVC_2020.Areas.Admin.Model.DAO
{
    public class ProductDAO
    {
        public List<product> listAllProduct()
        {
            DBModel dBModel = new DBModel();
            List<product> result = dBModel.products.OrderByDescending(x => x.ID_PRODUCT).ToList();
            return result;
        }
    }
}