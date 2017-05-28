using Model.Dao;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Model.EF;
using btlonweb.Models.DAO;
using btlonweb.Models.Bean;
using btlonweb.Common;
using PagedList;
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
            var cart = Session[CommonConstants.CartSession];
            var gioHang = new Cart();
            if (cart != null)
            {
                gioHang = (Cart)cart;
            }
            return PartialView(gioHang);
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

        public ActionResult getProductByCategoryID(int CategoryID, int? page)
        {
            int pageSize = 6;
            int pageNumber = (page ?? 1);
            ProductDAO proDAO = new ProductDAO();
            return View(proDAO.getProductByCategoryID(CategoryID).OrderBy(n => n.ID).ToPagedList(pageNumber, pageSize));
        }
        public ActionResult getProductByCompany(int CompanyID, int? page)
        {
            int pageSize = 6;
            int pageNumber = (page ?? 1);
            ProductDAO proDAO = new ProductDAO();
            return View(proDAO.getProductByCompanyID(CompanyID).OrderBy(n => n.ID).ToPagedList(pageNumber, pageSize));
        }
        public ActionResult ProductDetail(int ProductID, int CategoryID)
        {
            ProductDAO proDAO = new ProductDAO();
            Session["SPLQ"] = null;
            Session["SPLQ"] = CategoryID;
            return View(proDAO.ProductDetail(ProductID));
        }
        public PartialViewResult ProductRelated()
        {
            int CategoryID = (int)Session["SPLQ"];
            ProductDAO proDAO = new ProductDAO();
            IQueryable<Product> rs = proDAO.getProductByCategoryID(CategoryID).Take(4);
            return PartialView(rs);
        }
        public PartialViewResult HeaderCenterPartial()
        {
            var cart = Session[CommonConstants.CartSession];
            var gioHang = new Cart();
            if (cart != null)
            {
                gioHang = (Cart)cart;
            }
            return PartialView(gioHang);

        }
        public ActionResult setIndex()
        {
            Session[CommonConstants.USER_SESSION] = null;
            return RedirectToAction("Index", "Home", new { area = "" });
        }
        [HttpPost]
        public ActionResult TimKiem()
        {
            string rs = Request.Form["txtTimKiem"];
            ProductDAO dao = new ProductDAO();
            IEnumerable<Product> ls = dao.ListAllPaging(rs);
            return View(ls);
        }
    }
}