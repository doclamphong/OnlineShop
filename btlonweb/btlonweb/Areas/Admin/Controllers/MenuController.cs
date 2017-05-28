using Model.Dao;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace btlonweb.Areas.Admin.Controllers
{
    public class MenuController : Controller
    {
        // GET: Admin/Menu
        public ActionResult Index(string searchString, int page=1, int pageSize=2)
        {
            var dao = new MenuDao();
            var model = dao.ListPageAll(searchString,page,pageSize);
            ViewBag.SearchString = searchString;
            return View(model);
        }
    }
}