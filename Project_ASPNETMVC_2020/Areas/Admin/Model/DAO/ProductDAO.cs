using Project_ASPNETMVC_2020.Areas.Admin.ClassToConfig;
using Project_ASPNETMVC_2020.Areas.Admin.Model.Form;
using Project_ASPNETMVC_2020.Areas.Admin.ToolsAdmin;
using Project_ASPNETMVC_2020.Model.EF;
using System;
using System.Collections.Generic;
using System.Data.Entity.Migrations;
using System.Drawing;
using System.Linq;
using System.Web;

namespace Project_ASPNETMVC_2020.Areas.Admin.Model.DAO
{
    public class ProductDAO
    {
        public string generateIDProduct()
        {
            DBModel dBModel = new DBModel();
            var tmp = dBModel.products;
            int tmpInt = 0;
            foreach (product item in tmp)
            {
                int intCurrent = int.Parse(item.ID_PRODUCT.Substring(2));
                if (tmpInt <= intCurrent)
                {
                    tmpInt = intCurrent;
                }

            }
            return "DT" + (tmpInt + 1);
        }

        public string generateNameProduct(string nameproduct, string brand)
        {
            string tembrand =ToolsOfAdmin.FirstCharToUpper(brand.ToLower());
            return tembrand + " " + nameproduct;
        }
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
        public bool hasBrand(product p)
        {
            var check = false;
            foreach (brand b in listBrands())
            {
                if (b.ID_BRAND.Equals(p.ID_BRAND))
                {
                    check = true;
                }
            }
            return check;
        }
        public bool hasMemory(product p)
        {
            var check = false;
            foreach (memory b in listMemory())
            {
                if (b.MEMORY1 == (p.MEMORY))
                {
                    check = true;
                }
            }
            return check;
        }
        public bool hasRam(product p)
        {
            var check = false;
            foreach (ram b in listRams())
            {
                if (b.RAM1 == (p.RAM))
                {
                    check = true;
                }
            }
            return check;
        }
        public bool hasHDH(product p)
        {
            var check = false;
            foreach (hedieuhanh b in listHDH())
            {
                if (b.OS.Equals(p.OS))
                {
                    check = true;
                }
            }
            return check;
        }
        public bool checkExitNameProductForAdd(string nameproduct)
        {
            DBModel dBModel = new DBModel();
            var check = dBModel.products.Where(x => x.NAME.ToLower() == nameproduct.ToLower()).Count();
            if (check > 0)
            {
                return false;

            }
            else
            {
                return true;
            }

        }
        public bool checkExitNameProductForUp(string nameproduct, string idproduct)
        {
            DBModel dBModel = new DBModel();
            var check = dBModel.products.Where(x => x.NAME.ToLower() == nameproduct.ToLower()).Count();
            if (nameproduct.Equals(getProductById(idproduct).NAME)==false){
                if (check > 0)
                {
                    return false;
                }
                else
                {
                    return true;
                }
            }
            else
            {
                if (check > 1)
                {
                    return false;
                }
                else
                {
                    return true;
                }
            }

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
            return dBModel.products.Where(x => x.ID_PRODUCT == idproduct).FirstOrDefault();
        }
        public void deleteProduct(string idproduct)
        {
            DBModel dBModel = new DBModel();
            product p = getProductById(idproduct);
            if (p != null)
            {
                dBModel.products.Attach(p);
                dBModel.products.Remove(p);
                dBModel.SaveChanges();

            }

        }

        public string addProduct(FormProduct form, List<HttpPostedFileBase> files, string des)
        {
            DBModel dBModel = new DBModel();
            product p = new product();

            try
            {

                p.ID_PRODUCT = generateIDProduct();
                p.NAME = generateNameProduct(form.nameproduct, form.brand);
                p.OS = form.hedieuhanh;
                p.ID_BRAND = form.brand;
                p.MEMORY = Convert.ToInt32(form.memory);
                p.RAM = Convert.ToInt32(form.ram);
                p.PRICE = Convert.ToInt32(form.price);
                p.AMOUNT = Convert.ToInt32(form.amount);
                p.SALE_RATE = Convert.ToInt32(form.salerate);
                p.AMOUNT_SOLD = 0;
                p.DATE_SUBMITTED = DateTime.Now;
                p.DESCRIPTION = des;
                HandleFile upload = new HandleFile();
                List<string> imgs = upload.uploadImageProduct(files, p.NAME);
                p.IMG = imgs[0];
                p.IMG2 = imgs[1];
                p.IMG3 = imgs[2];
                dBModel.products.Add(p);
                dBModel.SaveChanges();
            }
            catch (Exception e)
            {
                return "fail";
            }
            return p.ID_PRODUCT;
        }
        public string updateProduct(FormUpdateProduct form, Dictionary<int, HttpPostedFileBase> files, string des)
        {
            DBModel dBModel = new DBModel();
            product p = getProductById(form.idproduct);

            try
            {

                p.NAME = generateNameProduct(form.nameproduct, form.brand);
                p.OS = form.hedieuhanh;
                p.ID_BRAND = form.brand;
                p.MEMORY = Convert.ToInt32(form.memory);
                p.RAM = Convert.ToInt32(form.ram);
                p.PRICE = Convert.ToInt32(form.price);
                p.AMOUNT = Convert.ToInt32(form.amount);
                p.SALE_RATE = Convert.ToInt32(form.salerate);
                p.DATE_SUBMITTED = DateTime.Now;
                p.DESCRIPTION = des;
                HandleFile upload = new HandleFile();
                Dictionary<int, string> imgs = upload.uploadImageProduct(files, p.NAME);
                if (imgs.Count() > 0)
                {
                    var keys = files.Keys;
                    foreach (var k in keys)
                    {
                        if (k == 1)
                        {
                            p.IMG = imgs[k];
                        }
                        if (k == 2)
                        {
                            p.IMG2 = imgs[k];
                        }
                        if (k == 3)
                        {
                            p.IMG3 = imgs[k];
                        }

                    }
                }
                dBModel.products.AddOrUpdate(p);
                dBModel.SaveChanges();
            }
            catch (Exception e)
            {
                return "fail";
            }
            return p.ID_PRODUCT;
        }
        public product findProductById(string id)
        {
            DBModel dBModel = new DBModel();
            var result = dBModel.products.Where(x => x.ID_PRODUCT.Equals(id)).FirstOrDefault();
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
        public product productDetail(string id)
        {
            DBModel dBModel = new DBModel();
            var result = dBModel.products.Where(x => x.ID_PRODUCT.Equals(id)).FirstOrDefault();
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
    }
}