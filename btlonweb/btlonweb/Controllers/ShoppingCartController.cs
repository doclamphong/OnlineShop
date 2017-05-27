using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using btlonweb.Common;
using btlonweb.Models.Bean;
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
        public ActionResult AddNewItem(int ProductID,int quantity)
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

        public ActionResult DatHang()
        {
            var user = Session[CommonConstants.USER_SESSION];
            if (user == null)
            {
                return RedirectToAction("Index", "Login", new { area = "Admin" });
            }
            if (Session[CommonConstants.CartSession] == null)
            {
                return RedirectToAction("Index", "Home", new { area = "" });
            }
            return RedirectToAction("Index", "Home", new { area = "" }); 
        }
    }
}