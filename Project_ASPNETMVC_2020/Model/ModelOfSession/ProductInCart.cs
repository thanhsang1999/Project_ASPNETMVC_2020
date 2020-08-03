using Antlr.Runtime.Tree;
using Project_ASPNETMVC_2020.Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Project_ASPNETMVC_2020.Model.ModelOfSession
{
    public class ProductInCart
    {
        private product Product;
        private int quantityInCart;

        public ProductInCart(product product, int quantityInCart)
        {
            this.Product = product;
            this.QuantityInCart = quantityInCart;
        }
        public float realPrice()
        {
            float rs = 0;
            if (Product1.SALE_RATE == 0)
            {
                rs += (float)Product1.PRICE.Value * quantityInCart;
            }
            else
            {
                rs += (float)(Product1.PRICE.Value - (Product1.PRICE.Value * ((float)Product1.SALE_RATE.Value / 100)));
            }
            return rs;
        }

        public product Product1 { get => Product; set => Product = value; }
        public int QuantityInCart { get => quantityInCart; set => quantityInCart = value; }
    }
}