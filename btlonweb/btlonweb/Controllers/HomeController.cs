using Model.Dao;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Model.EF;
using btlonweb.Models.DAO;
namespace btlonweb.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            ProductDAO proDAO = new ProductDAO();
            return View(proDAO.getProductByCreateDate());
        }
        public PartialViewResult HeaderTopPartial()
        {
            return PartialView();
        }
        public PartialViewResult HeaderMiddlePartial()
        {
            return PartialView();
        }
        public PartialViewResult HeaderBottomPartial()
        {
            return PartialView();
        }
        public PartialViewResult SliderPartial()
        {
            ProductDAO proDAO = new ProductDAO();
            return PartialView(proDAO.getProductByViewCount());

        }
        public PartialViewResult CategoryPartial()
        {
            CategoryProductDAO cpDAO = new CategoryProductDAO();
            IQueryable<CategoryProduct> rs = cpDAO.getAllCategoryProduct();
            return PartialView(rs);
        }
        public PartialViewResult BrandsPartial()
        {
            CompanyDAO companyDAO = new CompanyDAO();
            return PartialView(companyDAO.getAllCompany());
        }
        [ChildActionOnly]
        [OutputCache(Duration = 3600 * 24)]
        public ActionResult MenuMain()
        {
            var model = new MenuDao().ListByGroupId(1);
            return PartialView(model);
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}