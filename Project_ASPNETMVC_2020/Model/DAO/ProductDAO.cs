﻿using Project_ASPNETMVC_2020.Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;
using System.Web.UI.WebControls;
using System.Security.Cryptography;

namespace Project_ASPNETMVC_2020.Model.DAO
{
    public class ProductDAO
    {
        DBModel dBModel;
        public ProductDAO()
        {
            this.dBModel = new DBModel();
        }
        public List<product> listProductRecentlyView(string iduser)
        {
            List<product> listProduct = new List<product>();
            List<recently_viewed> rv = new RecentlyViewDAO().getRvByIdUser(iduser);
            foreach (recently_viewed item in rv)
            {
                product p = findProductById(item.ID_PRODUCT);
                if (p == null)
                {
                    
                }
                else
                {
                    listProduct.Add(p);
                }              
            }
            return listProduct;
        }
        public product findProductById(string id)
        {
            var result = dBModel.products.Where(x=>x.ID_PRODUCT.Equals(id)).FirstOrDefault();
            if (id == null)
            {

                return null;
            }
            else
            {

                if (result == null)
                {
                    return null;
                }
            }
            return result;
        }

    

        public int totalRecordByBrand(string id)
        {
            var result = (from product in dBModel.products
                          join catogery in dBModel.brands on product.ID_BRAND equals catogery.ID_BRAND
                          join catogery1 in dBModel.memories on product.MEMORY equals catogery1.MEMORY1
                          join catogery2 in dBModel.rams on product.RAM equals catogery2.RAM1
                          join catogery3 in dBModel.hedieuhanhs on product.OS equals catogery3.OS
                          where product.ID_BRAND == id && product.AMOUNT > 0
                          select product).Count();
            return result;
        }
        public int totalRecordByMemory(int id)
        {
            var result = (from product in dBModel.products
                          join catogery in dBModel.brands on product.ID_BRAND equals catogery.ID_BRAND
                          join catogery1 in dBModel.memories on product.MEMORY equals catogery1.MEMORY1
                          join catogery2 in dBModel.rams on product.RAM equals catogery2.RAM1
                          join catogery3 in dBModel.hedieuhanhs on product.OS equals catogery3.OS
                          where product.MEMORY == id && product.AMOUNT > 0
                          select product).Count();
            return result;
        }
        public int totalRecordByHeDieuHanh(string id)
        {
            var result = (from product in dBModel.products
                          join catogery in dBModel.brands on product.ID_BRAND equals catogery.ID_BRAND
                          join catogery1 in dBModel.memories on product.MEMORY equals catogery1.MEMORY1
                          join catogery2 in dBModel.rams on product.RAM equals catogery2.RAM1
                          join catogery3 in dBModel.hedieuhanhs on product.OS equals catogery3.OS
                          where product.OS == id && product.AMOUNT > 0
                          select product).Count();
            return result;
        }
        public int totalRecoreByRam(int id)
        {
            var result = (from product in dBModel.products
                          join catogery in dBModel.brands on product.ID_BRAND equals catogery.ID_BRAND
                          join catogery1 in dBModel.memories on product.MEMORY equals catogery1.MEMORY1
                          join catogery2 in dBModel.rams on product.RAM equals catogery2.RAM1
                          join catogery3 in dBModel.hedieuhanhs on product.OS equals catogery3.OS
                          where product.RAM == id && product.AMOUNT > 0
                          select product).Count();
            return result;
        }
        public int totalRecoreByPrice(int id)
        {
            if (  productByPriceQuery(id)==null)
            {
                return 0;
            }else if(id <0 && id > 5)
            {
                return 0;
            }
            return productByPriceQuery(id).Count();
        }
        public product productDetail(string id)
        {
            var result = dBModel.products.Where(x => x.ID_PRODUCT.Equals(id)).FirstOrDefault();
            if (id == null)
            {
               
                return null;
            }
            else
            {
               
                if (result == null )
                {
                    return null;
                }
            }
            return result;
        }
        public List<product> productByBrand(string id, int pageIndex, int pageSize)
        {
            var result = (from product in dBModel.products
                          join catogery in dBModel.brands on product.ID_BRAND equals catogery.ID_BRAND
                          join catogery1 in dBModel.memories on product.MEMORY equals catogery1.MEMORY1
                          join catogery2 in dBModel.rams on product.RAM equals catogery2.RAM1
                          join catogery3 in dBModel.hedieuhanhs on product.OS equals catogery3.OS
                          where product.ID_BRAND == id && product.AMOUNT>0
                          select product).OrderByDescending(x => x.ID_PRODUCT).Skip((pageIndex - 1) * pageSize).Take(pageSize).ToList();

            return result;
        }
        public List<product> productByMemory(int id, int pageIndex, int pageSize)
        {
            var result = (from product in dBModel.products
                          join catogery in dBModel.brands on product.ID_BRAND equals catogery.ID_BRAND
                          join catogery1 in dBModel.memories on product.MEMORY equals catogery1.MEMORY1
                          join catogery2 in dBModel.rams on product.RAM equals catogery2.RAM1
                          join catogery3 in dBModel.hedieuhanhs on product.OS equals catogery3.OS
                          where product.MEMORY == id && product.AMOUNT > 0
                          select product).OrderByDescending(x => x.ID_PRODUCT).Skip((pageIndex - 1) * pageSize).Take(pageSize).ToList();
            return result;
        }
        public List<product> productByHeDieuHanh(string id, int pageIndex, int pageSize)
        {
            var result = (from product in dBModel.products
                          join catogery in dBModel.brands on product.ID_BRAND equals catogery.ID_BRAND
                          join catogery1 in dBModel.memories on product.MEMORY equals catogery1.MEMORY1
                          join catogery2 in dBModel.rams on product.RAM equals catogery2.RAM1
                          join catogery3 in dBModel.hedieuhanhs on product.OS equals catogery3.OS
                          where product.OS == id && product.AMOUNT > 0
                          select product).OrderByDescending(x => x.ID_PRODUCT).Skip((pageIndex - 1) * pageSize).Take(pageSize).ToList();
            return result;
        }
        public List<product> productByRam(int id, int pageIndex, int pageSize)
        {
            var result = (from product in dBModel.products
                          join catogery in dBModel.brands on product.ID_BRAND equals catogery.ID_BRAND
                          join catogery1 in dBModel.memories on product.MEMORY equals catogery1.MEMORY1
                          join catogery2 in dBModel.rams on product.RAM equals catogery2.RAM1
                          join catogery3 in dBModel.hedieuhanhs on product.OS equals catogery3.OS
                          where product.RAM == id && product.AMOUNT > 0
                          select product).OrderByDescending(x => x.ID_PRODUCT).Skip((pageIndex - 1) * pageSize).Take(pageSize).ToList();
            return result;
        }
        public IQueryable<product> productByPriceQuery(int id)
        {
            if (id == 1)
            {
                var result = (from product in dBModel.products
                              join catogery in dBModel.brands on product.ID_BRAND equals catogery.ID_BRAND
                              join catogery1 in dBModel.memories on product.MEMORY equals catogery1.MEMORY1
                              join catogery2 in dBModel.rams on product.RAM equals catogery2.RAM1
                              join catogery3 in dBModel.hedieuhanhs on product.OS equals catogery3.OS
                              where product.PRICE.Value < 5000000 && product.AMOUNT > 0
                              select product);
                return result;
            }
            else if (id == 2)
            {
                var result = (from product in dBModel.products
                              join catogery in dBModel.brands on product.ID_BRAND equals catogery.ID_BRAND
                              join catogery1 in dBModel.memories on product.MEMORY equals catogery1.MEMORY1
                              join catogery2 in dBModel.rams on product.RAM equals catogery2.RAM1
                              join catogery3 in dBModel.hedieuhanhs on product.OS equals catogery3.OS
                              where product.PRICE.Value > 5000000 && product.PRICE.Value < 10000000 && product.AMOUNT > 0
                              select product);
                return result;
            }
            else if (id == 3)
            {
                var result = (from product in dBModel.products
                              join catogery in dBModel.brands on product.ID_BRAND equals catogery.ID_BRAND
                              join catogery1 in dBModel.memories on product.MEMORY equals catogery1.MEMORY1
                              join catogery2 in dBModel.rams on product.RAM equals catogery2.RAM1
                              join catogery3 in dBModel.hedieuhanhs on product.OS equals catogery3.OS
                              where product.PRICE.Value > 10000000 && product.PRICE.Value < 15000000 && product.AMOUNT > 0
                              select product);
                return result;
            }
            else if (id == 4)
            {
                var result = (from product in dBModel.products
                              join catogery in dBModel.brands on product.ID_BRAND equals catogery.ID_BRAND
                              join catogery1 in dBModel.memories on product.MEMORY equals catogery1.MEMORY1
                              join catogery2 in dBModel.rams on product.RAM equals catogery2.RAM1
                              join catogery3 in dBModel.hedieuhanhs on product.OS equals catogery3.OS
                              where product.PRICE.Value > 15000000 && product.PRICE.Value < 20000000 && product.AMOUNT > 0
                              select product);
                return result;

            }
            else if (id == 5)
            {
                var result = (from product in dBModel.products
                              join catogery in dBModel.brands on product.ID_BRAND equals catogery.ID_BRAND
                              join catogery1 in dBModel.memories on product.MEMORY equals catogery1.MEMORY1
                              join catogery2 in dBModel.rams on product.RAM equals catogery2.RAM1
                              join catogery3 in dBModel.hedieuhanhs on product.OS equals catogery3.OS
                              where product.PRICE.Value > 20000000  && product.AMOUNT > 0
                              select product);
                return result;
            }
            else
            {
                return null;
            }
        }
        public List<product> productByPrice(int id, int pageIndex, int pageSize)
        {

            if (productByPriceQuery(id) == null )
            {
                return null;
            }
            else
            {
                List<product> rs = productByPriceQuery(id).OrderByDescending(x => x.ID_PRODUCT).Skip((pageIndex - 1) * pageSize).Take(pageSize).ToList();

                return rs;

            }
        }


    }
}