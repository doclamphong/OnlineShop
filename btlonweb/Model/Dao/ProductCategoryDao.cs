using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model.EF;

namespace Model.Dao
{
    public class ProductCategoryDao
    {
        OnlineDbContext db = null;
        public ProductCategoryDao()
        {
            db = new OnlineDbContext();
        }

        public List<CategoryProduct> ListAll()
        {
            return db.CategoryProducts.Where(x => x.Status == true).OrderBy(x => x.DisplayOrder).ToList();
        }

        public CategoryProduct ViewDetail(long id)
        {
            return db.CategoryProducts.Find(id);
        }
    }
}
