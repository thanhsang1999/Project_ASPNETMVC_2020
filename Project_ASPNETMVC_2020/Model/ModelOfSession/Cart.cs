using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Project_ASPNETMVC_2020.Model.EF;
using Project_ASPNETMVC_2020.Model.DAO;
using System.Net.Http.Headers;
using System.Security.Cryptography;
using Antlr.Runtime.Tree;

namespace Project_ASPNETMVC_2020.Model.ModelOfSession
{
    public class Cart
    {
        Dictionary<string, ProductInCart> mapCart;
        DBModel dBModel;

        public Dictionary<string, ProductInCart> MapCart { get => mapCart; set => mapCart = value; }
        public DBModel DBModel { get => dBModel; set => dBModel = value; }

        public Cart()
        {
            MapCart = new Dictionary<string, ProductInCart>();
            this.DBModel = new DBModel();
        }
        public bool addItem(string id)
        {
            // neu co trong gio hang
            if (MapCart.ContainsKey(id))
            {
                if (MapCart[id].QuantityInCart + 1 > MapCart[id].Product1.AMOUNT)
                {
                    return false;
                }
                else
                {
                    MapCart[id].QuantityInCart++;
                    return true;
                }
            }
            // neu chua co trong gio hang
            else
            {
                product product = new ProductDAO().findProductById(id);
                if (product.AMOUNT.Value != 0)
                {
                    ProductInCart p = new ProductInCart(product, 1);
                    MapCart.Add(id, p);
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
            // neu co trong gio hang
            if (MapCart.ContainsKey(id))
            {
                if (MapCart[id].QuantityInCart + quantity > MapCart[id].Product1.AMOUNT)
                {
                   
                    return false;
                }
                else
                {
                    MapCart[id].QuantityInCart = quantity;
                    return true;
                }

            }
            // neu chua co trong gio hang
            else
            {
                product product = new ProductDAO().findProductById(id);
                if (product.AMOUNT < quantity)
                {
                    return false;
                }
                else
                {
                    MapCart.Add(id, new ProductInCart(product, quantity));
                    return true;
                }
            }
        }
        public bool removeItem(string id)
        {
            if (MapCart.ContainsKey(id) == false)
            {
                return false;
            }
            else
            {
                MapCart.Remove(id);
                return true;
            }

        }
        public float totalMoneyInCart()
        {
            float sum = 0;
            var keys = MapCart.Keys;
            foreach (string key in keys)
            {
                if (MapCart[key].Product1.SALE_RATE == 0)
                {
                    sum += (MapCart[key].QuantityInCart * (float)MapCart[key].Product1.PRICE.Value);
                }
                else
                {
                    sum += MapCart[key].QuantityInCart * (float)(MapCart[key].Product1.PRICE.Value - (MapCart[key].Product1.PRICE.Value * ((float)MapCart[key].Product1.SALE_RATE.Value / 100)));
                }
            }
            return sum;
        }
        public int totalItemInCart()
        {
            return MapCart.Count();
        }

    }
}