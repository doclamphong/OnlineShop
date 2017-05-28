using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Model.EF;
using btlonweb.Common;
namespace btlonweb.Controllers
{
    public class TaiKhoanController : Controller
    {
        // GET: TaiKhoan
        public ActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public ActionResult DangKy()
        {
            string nameCustomer = Request.Form["txtKhachHang"];
            string address = Request.Form["txtDiaChi"];
            string mobile = Request.Form["txtMobile"];
            string account = Request.Form["txtAccount"];
            string password = Request.Form["txtPassword"];
            string email = Request.Form["txtEmail"];

            OnlineDbContext db = new OnlineDbContext();
            User us = new User();
            us.Name = nameCustomer;
            us.Address = address;
            us.UserName = account;
            us.Password = password;
            us.Email = email;
            us.GroupID = "MEMBER";
            db.Users.Add(us);
            db.SaveChanges();
            UserLogin userLogin = new UserLogin();
            userLogin.UserID = us.ID;
            userLogin.UserName = us.UserName;
            userLogin.GroupID = us.GroupID;
            Session[CommonConstants.USER_SESSION] = userLogin;
            return RedirectToAction ("DangKyThanhCong", "TaiKhoan");
        }
        public ActionResult DangKyThanhCong()
        {
            return View();
        }
    }
}