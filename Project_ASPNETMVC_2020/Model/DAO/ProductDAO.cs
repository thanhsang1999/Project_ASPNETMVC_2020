using Project_ASPNETMVC_2020.Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;
using System.Web.UI.WebControls;

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
                listProduct.Add(p);
            }
            return listProduct;
        }
        public product findProductById(string id)
        {
            return dBModel.products.Where(x => x.ID_PRODUCT == id && x.AMOUNT > 0).SingleOrDefault();
        }

        public List<product> productAll(int pageIndex, int pageSize)
        {
            return dBModel.products.OrderByDescending(x => x.ID_PRODUCT).Skip((pageIndex - 1) * pageSize).Take(pageSize).ToList();
        }

        public int totalRecordByBrand(string id)
        {
            return dBModel.products.Where(x => x.ID_BRAND == id && x.AMOUNT > 0).Count();
        }
        public int totalRecordByMemory(int id)
        {
            return dBModel.products.Where(x => x.MEMORY == id && x.AMOUNT > 0).Count();
        }
        public int totalRecordByHeDieuHanh(string id)
        {
            return dBModel.products.Where(x => x.ID_BRAND == id).Count();
        }
        public int totalRecoreByRam(int id)
        {
            return dBModel.products.Where(x => x.RAM == id).Count();
        }
        public int totalRecoreByPrice(int id)
        {
            return productByPriceQuery(id).Count();
        }
        public product productDetail(string id)
        {
            if (id == null)
            {
                return null;
            }
            else
            {
                if (dBModel.products.Find(id) == null)
                {
                    return null;
                }
            }
            return dBModel.products.Find(id);
        }
        public List<product> productByBrand(string id, int pageIndex, int pageSize)
        {
            return dBModel.products.Where(x => x.ID_BRAND == id && x.AMOUNT > 0).OrderByDescending(x => x.ID_PRODUCT).Skip((pageIndex - 1) * pageSize).Take(pageSize).ToList();
        }
        public List<product> productByMemory(int id, int pageIndex, int pageSize)
        {
            return dBModel.products.Where(x => x.MEMORY == id && x.AMOUNT > 0).OrderByDescending(x => x.ID_PRODUCT).Skip((pageIndex - 1) * pageSize).Take(pageSize).ToList();
        }
        public List<product> productByHeDieuHanh(string id, int pageIndex, int pageSize)
        {
            return dBModel.products.Where(x => x.OS == id && x.AMOUNT > 0).OrderByDescending(x => x.ID_PRODUCT).Skip((pageIndex - 1) * pageSize).Take(pageSize).ToList();
        }
        public List<product> productByRam(int id, int pageIndex, int pageSize)
        {
            return dBModel.products.Where(x => x.RAM == id && x.AMOUNT > 0).OrderByDescending(x => x.ID_PRODUCT).Skip((pageIndex - 1) * pageSize).Take(pageSize).ToList();
        }
        public IQueryable<product> productByPriceQuery(int id)
        {
            if (id == 1)
            {
                return dBModel.products.Where(x => x.PRICE.Value < 5000000 && x.AMOUNT > 0);
            }
            else if (id == 2)
            {
                return dBModel.products.Where(x => x.PRICE.Value > 5000000 && x.PRICE.Value < 10000000 && x.AMOUNT > 0);
            }
            else if (id == 3)
            {
                return dBModel.products.Where(x => x.PRICE.Value < 15000000 && x.PRICE.Value > 10000000 && x.AMOUNT > 0);
            }
            else if (id == 4)
            {
                return dBModel.products.Where(x => x.PRICE.Value > 15000000 && x.PRICE.Value < 20000000 && x.AMOUNT > 0);

            }
            else if (id == 5)
            {
                return dBModel.products.Where(x => x.PRICE.Value > 20000000 && x.AMOUNT > 0);
            }
            else
            {
                return null;
            }
        }
        public List<product> productByPrice(int id, int pageIndex, int pageSize)
        {

            List<product> rs = productByPriceQuery(id).OrderByDescending(x => x.ID_PRODUCT).Skip((pageIndex - 1) * pageSize).Take(pageSize).ToList();
            if (rs == null)
            {
                return null;
            }
            else
            {
                return rs;

            }
        }


    }
}