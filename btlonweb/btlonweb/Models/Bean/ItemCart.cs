using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Model.EF;
namespace btlonweb.Models.Bean
{
    [Serializable]
    public class ItemCart
    {
        public Product _product { get; set; }
        public int _quantity { get; set; }
        public int ThanhTien()
        {
            return Convert.ToInt32(_product.Price) * _quantity;

        }
    }
}