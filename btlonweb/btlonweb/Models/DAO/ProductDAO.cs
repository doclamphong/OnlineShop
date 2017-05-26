using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Model.EF;
namespace btlonweb.Models.DAO
{
    public class ProductDAO
    {
        OnlineDbContext db = null;
        public ProductDAO()
        {
            db = new OnlineDbContext();
        }

        public IQueryable<Product> getProductByViewCount()
        {
            var rs = (from pro in db.Products orderby pro.ViewCount descending select pro).Take(3);
            return rs; 
        }
    }
}