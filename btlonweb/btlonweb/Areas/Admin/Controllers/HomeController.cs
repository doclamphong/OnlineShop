using btlonweb.Common;
using Model.Dao;
using Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace btlonweb.Areas.Admin.Controllers
{
    public class HomeController : Controller
    {
        // GET: Admin/Home

        public ActionResult thongbao()
        {
            return View();
        }
        public ActionResult Index(string searchString, int page = 1, int pageSize = 10)
        {
            var dao = new OrderDao();
            var model = dao.ListAllPaging(searchString, page, pageSize);

            ViewBag.SearchString = searchString;

            return View(model);
        }
        public ActionResult setIndex()
        {
            Session[CommonConstants.USER_SESSION] = null;
            return RedirectToAction("Index", "Login", new { area = "Admin" });
        }
        [HttpGet]
        public ActionResult Edit(long id)
        {
            var order = new OrderDao().ViewDetail(id);
            return View(order);
        }
        [HttpPost]
        public ActionResult Edit(Order order)
        {
            if (ModelState.IsValid)
            {
                var dao = new OrderDao();
                var result = dao.Update(order);
                if (result)
                {
                    return RedirectToAction("Index", "Home");
                }
                else
                {
                    ModelState.AddModelError("", "Cập nhật user không thành công");
                }
            }
            return View("Index");
        }
        public ActionResult Delete(long id)
        {
            new OrderDao().Delete(id);

            return RedirectToAction("Index");
        }
        public ActionResult getOrderDetailbyOrder(long id)
        {
            OrderDao dao = new OrderDao();
            return View(dao.getOrderDetailByOrder(id));
        }
       

    }
}