using Project_ASPNETMVC_2020.Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Project_ASPNETMVC_2020.Areas.Admin.Model.DAO
{
    public class BrandDAO
    {
        public List<brand> getAllBrands()
        {
            DBModel dBModel = new DBModel();
            return dBModel.brands.ToList();
        }
        public bool checkExit(string brand)
        {
            var check = false;
            foreach (brand item in getAllBrands())
            {
                if (item.ID_BRAND == brand.ToUpper())
                {
                    check = true;
                    return check;
                }
            }
            return check;
        }
        public bool addBrand(string brand)
        {
            try
            {
                DBModel dBModel = new DBModel();
                brand b = new brand();
                b.ID_BRAND = brand.ToUpper();
                b.BRAND1 = ToolsAdmin.ToolsOfAdmin.FirstCharToUpper(brand);
                dBModel.brands.Add(b);
                dBModel.SaveChanges();
                return true;
            }
            catch (Exception e)
            {
                return false;
            }


        }
        public bool delBrand(string brand)
        {
            try
            {
                DBModel dBModel = new DBModel();
                brand b = dBModel.brands.Where(x => x.ID_BRAND == brand).FirstOrDefault();
                if (b != null)
                {
                    dBModel.brands.Attach(b);
                    dBModel.brands.Remove(b);
                    dBModel.SaveChanges();
                    return true;
                }
                else
                {
                    return false;
                }


            }
            catch (Exception e)
            {
                return false;
            }


        }

    }
}