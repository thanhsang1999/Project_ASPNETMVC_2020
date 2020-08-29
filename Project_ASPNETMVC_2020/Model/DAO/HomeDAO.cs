using Project_ASPNETMVC_2020.Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

namespace Project_ASPNETMVC_2020.Model.DAO
{
    public static class HomeDAO
    {
        public static List<product> LoadProductDealsOfTheWeek()
        {
            List<product> listProducts =  HomeDAO.LoadListProduct();
            List<product> result = new List<product>();
            Random rd = new Random();
            for(int i = 0; i < 3; i++)
            {
                var numberRD = rd.Next(0, listProducts.Count);
                result.Add(listProducts[numberRD]);
            }
            return result;
        }
        public static List<product> LoadListProduct()
        {
            DBModel db = new DBModel();
            var result = db.products;
            return result.ToList();
        }
        public static List<product> LoadProductSpecial()
        {
            DBModel db = new DBModel();
            var result = db.products.OrderByDescending(x => x.PRICE).Take(8);
            return result.ToList();
        }
        public static List<product> LoadProductDiscount()
        {
            DBModel db = new DBModel();
            var result = db.products.OrderByDescending(x => x.SALE_RATE).Take(8);
            return result.ToList();
        }
        public static List<product> LoadProductBestSell()
        {
            DBModel db = new DBModel();
            var result = db.products.OrderByDescending(x => x.AMOUNT_SOLD).Take(8);
            return result.ToList();
        }

        public static List<product> LoadProductsToBaner()
        {
            DBModel db = new DBModel();
            var result = db.products.OrderByDescending(x => x.PRICE).Take(3);
            return result.ToList();
        }

        public static List<product> LoadHotNewArrivals()
        {
            DBModel db = new DBModel();
            var result = db.products.OrderByDescending(x => x.DATE_SUBMITTED).Take(20);
            return result.ToList();
        }

        public static List<product> LoadBestSellers()
        {
            DBModel db = new DBModel();
            var result = db.products.OrderByDescending(x => x.AMOUNT_SOLD).Take(24);
            return result.ToList();
        }
    }
}