using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Project_ASPNETMVC_2020.Model.EF;

namespace Project_ASPNETMVC_2020.Areas.Admin.Model.DAO
{
    public static class RateDAO
    {
        public static List<danhgia> LoadListRate()
        {
            DBModel db = new DBModel();
            var result = db.danhgias.OrderBy(x => x.ID_DANHGIA);
            return result.ToList();
        }
        public static bool DeleteRateByID(int idRate)
        {
            DBModel db = new DBModel();
            var tmp = db.danhgias.Where(x => x.ID_DANHGIA.Equals(idRate)).FirstOrDefault();
            if (tmp != null)
            {
                db.danhgias.Attach(tmp);
                db.danhgias.Remove(tmp);
                db.SaveChanges();
                return true;
            }
            else
            {
                return false;
            }
        }
    }
}