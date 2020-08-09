using Project_ASPNETMVC_2020.Model.Cart;
using Project_ASPNETMVC_2020.Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Project_ASPNETMVC_2020.Model.DAO
{
    public static class PayDAO
    {
        public static List<CartProductUser> LoadDataPay(string idAccount)
        {
            DBModel db = new DBModel();
            var tmp = from c in db.carts
                      join p in db.products
                      on c.ID_PRODUCT equals p.ID_PRODUCT
                      join a in db.accounts
                      on c.ID_ACCOUNT equals a.ID_ACCOUNT
                      join ct in db.ct_account
                      on c.ID_ACCOUNT equals ct.ID_ACCOUNT
                      where c.ID_ACCOUNT == idAccount
                      select new CartProductUser
                      {
                          ID_ACCOUNT = idAccount,
                          ID_PRODUCT = c.ID_PRODUCT,
                          AMOUNT = c.AMOUNT,
                          CHECKBOX = c.CHECKBOX,
                          NAME = p.NAME,
                          IMG = p.IMG,
                          PRICE = p.PRICE,
                          SALE_RATE = p.SALE_RATE,
                          DIA_CHI = ct.DIA_CHI,
                          HO_TEN = a.HO_TEN,
                          SDT = ct.SDT
                      };
            return tmp.ToList();
        }
        public static bool CreateNewOder(List<CartProductUser> ListCartProductUser)
        {
            if (ListCartProductUser != null)
            {
                DBModel db1 = new DBModel();
                order tmpOrder = new order();
                tmpOrder.ID_ORDER = PayDAO.GenerateIDOder();
                tmpOrder.ID_USER = ListCartProductUser[0].ID_ACCOUNT;
                tmpOrder.PRICE = (decimal?) PayDAO.TotalMoneyOder(ListCartProductUser[0].ID_ACCOUNT);
                tmpOrder.STATUS = "0";
                tmpOrder.HOTEN = ListCartProductUser[0].HO_TEN;
                tmpOrder.DIACHI = ListCartProductUser[0].DIA_CHI;
                tmpOrder.SDT = ListCartProductUser[0].SDT;
                db1.orders.Add(tmpOrder);
                db1.SaveChangesAsync();
                DBModel db2 = new DBModel();
                detail_order detail_Order = new detail_order();
            

              //  var tmp1 = db1.orders.Add()
                return true;
            }
            else
            {
                return false;
            }
        }
        public static string GenerateIDOder()
        {
            DBModel db = new DBModel();
            var tmp = db.orders;
            int tmpInt = 0;
            foreach (order item in tmp)
            {
                int intCurrent = int.Parse(item.ID_ORDER.Substring(2));
                if (tmpInt <= intCurrent)
                {
                    tmpInt = intCurrent;
                }

            }
            return "DH" + (tmpInt + 1);
        }
        public static double TotalMoneyOder(string idAccount)
        {
            DBModel db = new DBModel();
            var tmp = db.carts.Where(x => x.ID_ACCOUNT.Equals(idAccount));
            double result = 0;
            
                foreach (cart item in tmp.ToList())
                {
                    if (item.CHECKBOX == 1)
                    {
                        result += CartDAO.TotalMoneyOfProduct(item.ID_ACCOUNT, item.ID_PRODUCT);
                    }
                    else
                    {
                        continue;
                    }
                }


            return result;
        }
    }
}