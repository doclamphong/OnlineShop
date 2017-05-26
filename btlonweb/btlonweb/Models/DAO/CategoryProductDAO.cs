using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Model.EF;
namespace btlonweb.Models.DAO
{
    
    public class CategoryProductDAO
    {
        OnlineDbContext db = null;
        public CategoryProductDAO()
        {
            db = new OnlineDbContext();
        }
        public IQueryable<CategoryProduct> getAllCategoryProduct()
        {
            var rs = from cp in db.CategoryProducts where cp.ShowOnHome == true orderby cp.DisplayOrder select cp;
            return rs;

        }
    }
}