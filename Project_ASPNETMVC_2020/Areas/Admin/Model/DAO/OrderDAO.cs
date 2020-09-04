using Project_ASPNETMVC_2020.Model.EF;
using Project_ASPNETMVC_2020.Model.Other;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Project_ASPNETMVC_2020.Areas.Admin.Model.DAO
{
    public class OrderDAO
    {
        public List<order> ListOrder()
        {
            DBModel dBModel = new DBModel();
            List<order> result = dBModel.orders.Where(a => a.STATUS.Equals("0")).ToList();
            return result;
        }

        public List<order> ListOrder2()
        {
            DBModel dBModel = new DBModel();
            List<order> result = dBModel.orders.Where(a => a.STATUS != "0").ToList();
            return result;
        }
 
        public List<List<DetailOrderProduct>> LoadDetailOrder()
        {
            var tmp = ListOrder();
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

        public List<List<DetailOrderProduct>> LoadDetailOrder2()
        {
            var tmp = ListOrder2();
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
    }
}