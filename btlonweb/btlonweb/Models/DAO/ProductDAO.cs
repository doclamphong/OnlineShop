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
        public IQueryable<Product> getProductByCreateDate() { 
            var rs = (from pro in db.Products orderby pro.CreatedDate descending select pro).Take(12);
            return rs;
        }
        public IQueryable <Product> getProductByCategoryID(int CategoryID)
        {
            var rs = from sp in db.Products where sp.CategoryID == CategoryID select sp;
            return rs;
        }
        public IQueryable<Product> getProductByCompanyID(int CompanyID)
        {
            var rs = from sp in db.Products where sp.CompanyID == CompanyID select sp;
            return rs;
        }
        public Product ProductDetail(int ProductID)
        {        
            var rs = db.Products.SingleOrDefault(n => n.ID == ProductID);
            rs.ViewCount++;
            db.SaveChanges();
            return rs;
        }
        
       
    }
}