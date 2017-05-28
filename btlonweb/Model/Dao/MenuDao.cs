using Model.EF;
using PagedList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model.Dao
{
    public class MenuDao
    {
        OnlineDbContext db = null;
        public MenuDao()
        {
            db = new OnlineDbContext();
        }
        public List<Menu> ListByGroupId(int groupId)
        {
            return db.Menus.Where(x => x.TypeID == groupId && x.Status == true).OrderBy(x => x.DisplayOrder).ToList();
        }
        public IEnumerable<Menu> ListPageAll(string searchString, int page, int pageSize)
        {
            IQueryable<Menu> model = db.Menus;
            if(!string.IsNullOrEmpty(searchString))
            {
                model = model.Where(x => x.Text.Contains(searchString));
            }
            return db.Menus.OrderByDescending(x => x.ID).ToPagedList(page, pageSize);
        }
    }
}
