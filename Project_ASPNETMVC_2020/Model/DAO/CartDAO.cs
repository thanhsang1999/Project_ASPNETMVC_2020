using Project_ASPNETMVC_2020.Model.Cart;
using Project_ASPNETMVC_2020.Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Project_ASPNETMVC_2020.Model.DAO
{
    public static class CartDAO
    {
        public static List<CartProduct> LoadCart(string idAccount)
        {
            DBModel db = new DBModel();
            var tmp = from c in db.carts join p in db.products
                      on c.ID_PRODUCT equals p.ID_PRODUCT
                      where c.ID_ACCOUNT == idAccount
                      select new CartProduct
                      {
                          ID_ACCOUNT = idAccount,
                          ID_PRODUCT = c.ID_PRODUCT,
                          AMOUNT = c.AMOUNT,
                          CHECKBOX = c.CHECKBOX,
                          NAME = p.NAME,
                          IMG = p.IMG,
                          PRICE = p.PRICE
                      };
            return tmp.ToList();
        }
        public static void AddProductToCart(string idAccount,string idProduct,int amount)
        {
            DBModel db = new DBModel();
            var tmp = db.carts.Where(x => x.ID_ACCOUNT.Equals(idAccount)&&x.ID_PRODUCT.Equals(idProduct)).FirstOrDefault();
            if(tmp==null)
            {
                DBModel db1 = new DBModel();
                cart tmpCart = new cart();
                tmpCart.ID_ACCOUNT = idAccount;
                tmpCart.ID_PRODUCT = idProduct;
                tmpCart.AMOUNT = amount;
                tmpCart.CHECKBOX = 1;
                db1.carts.Add(tmpCart);
                db1.SaveChangesAsync();
            }
            else
            {
                DBModel db2 = new DBModel();
                var tmp1 = db2.carts.Where(x => x.ID_ACCOUNT.Equals(idAccount) && x.ID_PRODUCT.Equals(idProduct)).FirstOrDefault();
                tmp1.AMOUNT = tmp1.AMOUNT+amount;
                db2.SaveChangesAsync();
            }
        }
        public static bool DeleteProduct(string idAccount, string idProduct)
        {
            DBModel db = new DBModel();
            var tmp = db.carts.Where(x => x.ID_ACCOUNT.Equals(idAccount) && x.ID_ACCOUNT.Equals(idProduct)).FirstOrDefault();
            if (tmp != null)
            {
                db.carts.Remove(tmp);
                db.SaveChangesAsync();
                return true;
            }
            else
            {
                return false;
            }
            
        }
        public static int NumberOfProduct(string idAccount)
        {
            DBModel db = new DBModel();
            var tmp = db.carts.Count(x => x.ID_ACCOUNT.Equals(idAccount));
            return tmp;
        }
        
    }
}