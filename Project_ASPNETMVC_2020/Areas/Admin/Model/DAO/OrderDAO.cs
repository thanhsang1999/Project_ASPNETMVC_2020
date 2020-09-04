using Project_ASPNETMVC_2020.Model.EF;
using Project_ASPNETMVC_2020.Model.Other;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Project_ASPNETMVC_2020.Areas.Admin.Model.DAO
{
    public static class OrderDAO
    {
        public static List<order> ListOrder(string status1, string status2)
        {
            DBModel dBModel = new DBModel();
            List<order> result = dBModel.orders.Where(a => a.STATUS.Equals(status1)|| a.STATUS.Equals(status2)).ToList();
            return result;
        }
 
        public static List<List<DetailOrderProduct>> LoadDetailOrder(string status1, string status2)
        {
            var tmp = ListOrder(status1,status2);
            List<List<DetailOrderProduct>> result = new List<List<DetailOrderProduct>>();
            foreach (order item in tmp)
            {
                DBModel db = new DBModel();
                var tmpDO = from d in db.detail_order
                            join p in db.products
                            on d.ID_PRODUCT equals p.ID_PRODUCT
                            where d.ID_ORDER == item.ID_ORDER
                            select new DetailOrderProduct
                            {
                                ID_ORDER = d.ID_ORDER,
                                ID_PRODUCT = d.ID_PRODUCT,
                                AMOUNT = d.AMOUNT,
                                NAME = p.NAME
                            };
                result.Add(tmpDO.ToList());
            }

            return result;
        }
        public static bool ChangeStatusOrder(string idOrder,string status)
        {
            DBModel db = new DBModel();
            var tmp = db.orders.Where(x => x.ID_ORDER.Equals(idOrder)).FirstOrDefault();
            if (tmp != null)
            {
                tmp.STATUS = status;
                db.SaveChanges();
                return true;
            }
            {
            return false;
            }
        }
        public static bool checkOrder(string idOrder)
        {
            DBModel db = new DBModel();
            var tmp1 = db.orders.Where(x => x.ID_ORDER.Equals(idOrder)).FirstOrDefault();
            DBModel db2 = new DBModel();
            var tmp2 = db2.detail_order.Where(x => x.ID_ORDER.Equals(idOrder)).FirstOrDefault();
            if (tmp1.ID_ORDER == null)
            {
                return false;
            }
            else if (tmp1.ID_ORDER == null)
            {
                return false;
            }
            else
            {
                return true;
            }
        }
    }
}