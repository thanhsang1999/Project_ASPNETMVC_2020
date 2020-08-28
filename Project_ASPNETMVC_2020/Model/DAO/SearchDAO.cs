using Project_ASPNETMVC_2020.Model.EF;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;

namespace Project_ASPNETMVC_2020.Model.DAO
{
    public static class SearchDAO
    {
        public static List<string> loadNameProduct()
        {
            DBModel db = new DBModel();
            var result = db.products.Select(x=>x.NAME);
            return result.ToList();
        }
        public static string SearchNameToId(string name)
        {
            DBModel db = new DBModel();
            var result = db.products.Where(x => x.NAME.Equals(name)).FirstOrDefault();
            return result.ID_PRODUCT;
        }
    }
}