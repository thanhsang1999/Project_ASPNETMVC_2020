using Project_ASPNETMVC_2020.Model.EF;
using Project_ASPNETMVC_2020.Model.Other;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Project_ASPNETMVC_2020.Model.Order
{
    public class OrderDAO
    {
        static public List<order> LoadOrderAccount(string IdAccount)
        {
            DBModel db = new DBModel();
            var result = db.orders.Where(x => x.ID_USER.Equals(IdAccount));
            return result.ToList();
        }
        static public List<List<DetailOrderProduct>> LoadDetailOrder(string IdAccount)
        {
            var tmp = OrderDAO.LoadOrderAccount(IdAccount);
            List<List<DetailOrderProduct>> result = new List<List<DetailOrderProduct>>();
            foreach (order item in tmp)
            {
                DBModel db = new DBModel();
                var tmpDO = from d in db.detail_order join p in db.products
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
    }
}