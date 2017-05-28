using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using btlonweb.Common;
using btlonweb.Models.Bean;
using btlonweb.Models.DAO;
using Model.EF;

namespace btlonweb.Controllers
{
    public class ShoppingCartController : Controller
    {
        // GET: ShoppingCart
        public ActionResult ShoppingCartIndex()
        {
            var cart = Session[CommonConstants.CartSession];
            var gioHang = new Cart();
            if (cart != null)
            {
                gioHang = (Cart)cart;
            }
            return View(gioHang);
        }
        public ActionResult AddNewItem(int ProductID, int quantity)
        {
            var rs = Session[CommonConstants.CartSession];
            if (rs != null)
            {
                Cart gioHang = (Cart)rs;
                gioHang.AddNewItem(ProductID, quantity);
                Session[CommonConstants.CartSession] = gioHang;
            }
            else
            {
                Cart gioMuaHang = new Cart();
                gioMuaHang.AddNewItem(ProductID, quantity);
                Session[CommonConstants.CartSession] = gioMuaHang;
            }
            return Redirect(Request.UrlReferrer.ToString());
        }

        public ActionResult RemoveItem(int ProductID)
        {
            var gioHang = (Cart)Session[CommonConstants.CartSession];
            gioHang.DeleteItem(ProductID);
            Session[CommonConstants.CartSession] = gioHang;
            return RedirectToAction("ShoppingCartIndex");
        }

        public ActionResult SuaGioHang()
        {
            var ss = Session[CommonConstants.CartSession];

            if (ss == null)
            {
                return RedirectToAction("Index", "Home", new { area = "" });
            }
            else
            {
                Cart list = (Cart)ss;
                return View(list);
            }
        }
        public ActionResult UpdateCart(int ProductID, FormCollection f)
        {
            ProductDAO proDAO = new ProductDAO();
            Product product = proDAO.ProductDetail(ProductID);
            if (product == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            else
            {
                Cart gioHang = (Cart)Session[CommonConstants.CartSession];

                var sp = gioHang._listItem.SingleOrDefault(n => n._product.ID == ProductID);
                if (sp != null)
                {
                    sp._quantity = Convert.ToInt32(f["txtSoLuong"].ToString());
                }
            }
            return RedirectToAction("ShoppingCartIndex", "ShoppingCart");
        }
        [HttpPost]
        public ActionResult DatHang()
        {
            if (ModelState.IsValid)
            {
                if (Session[CommonConstants.USER_SESSION] == null)
                {
                    return RedirectToAction("Index", "Login", new { area = "Admin" });
                }
                if (Session[CommonConstants.CartSession] == null)
                {
                    return RedirectToAction("Index", "Home", new { area = "" });
                }
                //Thêm đơn hàng
                OnlineDbContext db = new OnlineDbContext();
                var user = (UserLogin)Session[CommonConstants.USER_SESSION];
                var gioHang = (Cart)Session[CommonConstants.CartSession];
                Order order = new Order();
                order.CustomerID = user.UserID;
                order.CreateDate = DateTime.Now;
                order.Status = false;
                order.ShipName = Request.Form["txtShipName"];
                order.ShipAddress = Request.Form["txtShipAddress"];
                order.ShipMobile = Request.Form["txtShipMobile"];
                db.Orders.Add(order);
                db.SaveChanges();
                foreach (var item in gioHang._listItem)
                {
                    OrderDetail orderDetail = new OrderDetail();
                    orderDetail.OrderID = order.ID;
                    orderDetail.ProductID = item._product.ID;
                    orderDetail.Quantity = item._quantity;
                    orderDetail.Price = item._product.Price;
                    db.OrderDetails.Add(orderDetail);
                }
                db.SaveChanges();
                Session[CommonConstants.CartSession] = null;
            }
            return RedirectToAction("ThanhToanThanhCong", "ShoppingCart", new { area = "" });
        }
        public ActionResult ThanhToanThanhCong()
        {
            return View();
        }
    }
}