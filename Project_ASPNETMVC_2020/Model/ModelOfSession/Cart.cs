using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Project_ASPNETMVC_2020.Model.EF;
using Project_ASPNETMVC_2020.Model.DAO;
using System.Net.Http.Headers;

namespace Project_ASPNETMVC_2020.Model.ModelOfSession
{
    public class Cart
    {
        Dictionary<string, ProductInCart> mapCart;
        DBModel dBModel;
        public Cart()
        {
            mapCart = new Dictionary<string, ProductInCart>();
            this.dBModel = new DBModel();
        }
        public bool addOneItem(string id)
        {
            if (mapCart.ContainsKey(id))
            {
                if (mapCart[id].QuantityInCart + 1 > mapCart[id].Product1.AMOUNT)
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
                product product =dBModel.products.Find(id);
                if(product.AMOUNT.Value != 0)
                { 
                    ProductInCart p= new ProductInCart(product,1);
                    mapCart.Add(id, p);
                    return true;
                }
                else
                {
                    return false;
                }
            }
          
        }
        public bool addItemWithAmount(string id, int quantity)
        {
            return false;
        }
        public bool removeItem(string id)
        {
            return false;
        }
        public int totalMoneyInCart()
        {
            return 0;
        }
        public int totalItemInCart()
        {
            return mapCart.Count();
        }

    }
}