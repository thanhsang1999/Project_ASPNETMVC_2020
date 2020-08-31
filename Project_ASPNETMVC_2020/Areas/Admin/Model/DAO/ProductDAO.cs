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
        public List<brand> listBrands()
        {
            DBModel dBModel = new DBModel();
            List<brand> result = dBModel.brands.ToList();
            return result;

        }
        public List<ram> listRams()
        {
            DBModel dBModel = new DBModel();
            List<ram> result = dBModel.rams.ToList();
            return result;

        }
        public List<memory> listMemory()
        {
            DBModel dBModel = new DBModel();
            List<memory> result = dBModel.memories.ToList();
            return result;

        }
        public List<hedieuhanh> listHDH()
        {
            DBModel dBModel = new DBModel();
            List<hedieuhanh> result = dBModel.hedieuhanhs.ToList();
            return result;

        }
        public int totalRecordAll()
        {
            DBModel dBModel = new DBModel();

           int result = dBModel.products.Count();
            return result;
        }
        public List<product> listAllProductWithPages(int pageIndex, int pageSize)
        {
            DBModel dBModel = new DBModel();
            List<product> result = dBModel.products.OrderByDescending(x => x.ID_PRODUCT).Skip((pageIndex - 1) * pageSize).Take(pageSize).ToList();
            return result;

        }
        public product getProductById(string idproduct)
        {
            DBModel dBModel = new DBModel();
            return dBModel.products.Where(x=>x.ID_PRODUCT==idproduct).FirstOrDefault();
        }
        public bool deleteProduct(string idproduct)
        {
            DBModel dBModel = new DBModel();
            product p=getProductById(idproduct);
            if (p != null)
            {
                dBModel.products.Attach(p);
                dBModel.products.Remove(p);
                dBModel.SaveChanges();
                return true;
            }
            else {
                return false;
            }
           
        }
    }
}