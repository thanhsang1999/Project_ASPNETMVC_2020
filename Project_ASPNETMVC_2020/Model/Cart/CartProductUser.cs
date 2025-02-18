﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Project_ASPNETMVC_2020.Model.Cart
{
    public class CartProductUser
    {
        public string ID_ACCOUNT { get; set; }
        public string ID_PRODUCT { get; set; }
        public decimal? AMOUNT { get; set; }
        public short? CHECKBOX { get; set; }
        public string NAME { get; set; }
        public string IMG { get; set; }
        public int? PRICE { get; set; }
        public int? SALE_RATE { get; set; }
        public string HO_TEN { get; set; }
        public string SDT { get; set; }
        public string DIA_CHI { get; set; }
    }
}