using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Model.EF;
using btlonweb.Models.DAO;
namespace btlonweb.Models.Bean
{
    public class Cart
    {
        public List<ItemCart> _listItem = new List<ItemCart>();
        public void AddNewItem(int ProductID,int quantity)
        {
            ProductDAO proDAO = new ProductDAO();
            var rs = proDAO.ProductDetail(ProductID);
            bool check = false;
            foreach(var item in _listItem)
            {
                if (item._product.ID == ProductID)
                {
                    item._quantity += quantity;
                    check = true;
                    break;
                }

            }
            if (!check)
            {
                ItemCart itemCart = new ItemCart();
                itemCart._product = rs;
                itemCart._quantity = quantity;
                _listItem.Add(itemCart);
            }
        }
        public void DeleteItem(int ProductID)
        {
            foreach (var item in _listItem)
            {
                if (item._product.ID==ProductID)
                {
                    _listItem.Remove(item);
                    break;
                }
            }
           
        }

    }
}