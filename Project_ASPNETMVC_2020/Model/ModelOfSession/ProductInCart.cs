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
            Product1 = product;
            this.QuantityInCart = quantityInCart;
        }

        public product Product1 { get => Product; set => Product = value; }
        public int QuantityInCart { get => quantityInCart; set => quantityInCart = value; }
    }
}