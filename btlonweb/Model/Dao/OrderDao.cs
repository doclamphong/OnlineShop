using Model.EF;
using PagedList;
using System;
using Common;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model.Dao
{
    public class OrderDao
    {
         OnlineDbContext db = null;
        public OrderDao()
        {
            db = new OnlineDbContext();
        }
        public IEnumerable<Order> ListAllPaging(string searchString, int page, int pageSize)
        {
            IQueryable<Order> model = db.Orders;
            //if (!string.IsNullOrEmpty(searchString))
            //{
            //    model = model.Where(x => x.ID.ToString(searchString) || x.ID.(searchString));
            //}

            return model.OrderByDescending(x => x.ID).ToPagedList(page, pageSize);
        }
        public IQueryable<OrderDetail> getOrderDetailByOrder(long id)
        {
            var rs = from sp in db.OrderDetails where sp.OrderID == id select sp;
            return rs;
        }
        public User thongtinkhachhang(long id,long CustomerID)
        {
           
            var rs = db.Users.SingleOrDefault(n=>n.ID==CustomerID);
            return rs;
        }
        public bool Update(Order entity)
        {
            try
            {
                var order = db.Orders.Find(entity.ID);
                order.Status = entity.Status;
                db.SaveChanges();
                return true;
            }
            catch (Exception)
            {
                //logging
                return false;
            }

        }
        public Order ViewDetail(long id)
        {
            return db.Orders.Find(id);
        }
        
        public bool Delete(long id)
        {
            try
            {
                var order = db.Orders.Find(id);
                db.Orders.Remove(order);
                db.SaveChanges();
                return true;
            }
            catch (Exception)
            {
                return false;
            }

        }

    }
}
