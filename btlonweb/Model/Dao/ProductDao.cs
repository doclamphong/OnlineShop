using Common;
using Model.EF;
using PagedList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model.Dao
{
    public class ProductDao
    {
        OnlineDbContext db = null;
        public static string USER_SESSION = "USER_SESSION";
        public ProductDao()
        {
            db = new OnlineDbContext();
        }
        public IEnumerable<Product> LIstAllPaging(string searchString, int page, int pageSize)
        {
            IQueryable<Product> model = db.Products;
            if (!string.IsNullOrEmpty(searchString))
            {
                model = model.Where(x => x.Name.Contains(searchString) || x.MetaTitle.Contains(searchString));
            }
            return model.OrderByDescending(x => x.CreatedDate).ToPagedList(page, pageSize);
        }
        public Product GetByID(long id)
        {
            return db.Products.Find(id);
        }
        public long Create(Product product)
        {
            if (string.IsNullOrEmpty(product.MetaTitle))
            {
                product.MetaTitle = StringHelper.ToUnsignString(product.Name);
            }
            product.CreatedDate = DateTime.Now;
            product.ViewCount += 1;
            db.Products.Add(product);
            db.SaveChanges();
            return product.ID;

        }
        public bool Update(Product entity)
        {
            try
            {
                var product = db.Products.Find(entity.ID);

                product.Name = entity.Name;
                product.MetaTitle = entity.MetaTitle;
                product.Image = entity.Image;
                product.ModifiedDate = DateTime.Now;
                product.Status = entity.Status;

                db.SaveChanges();
                return true;
            }
            catch (Exception)
            {
                //logging
                return false;
            }
        }
    }
}
