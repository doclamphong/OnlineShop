﻿using Model.EF;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model.Dao
{
    public class CategoryDao
    {
        OnlineDbContext db = null;
        public CategoryDao()
        {
            db = new OnlineDbContext();
        }
        public long Insert(Category category)
        {
            db.Categories.Add(category);
            db.SaveChanges();
            return category.ID;
        }
        public List<Category> ListAll()
        {
            return db.Categories.Where(x => x.Status == true).ToList();
        }
        public CategoryProduct ViewDetail(long id)
        {
            return db.CategoryProducts.Find(id);
        }

    }
}
