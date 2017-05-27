using CKSource.FileSystem;
using Model.Dao;
using Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace btlonweb.Areas.Admin.Controllers
{
    public class ProductController : Controller
    {
        // GET: Admin/Product
        [HttpGet]
        public ActionResult Index(string searchString, int page = 1, int pageSize = 10)
        {
            var dao = new ProductDao();
            var model = dao.LIstAllPaging(searchString, page, pageSize);
            ViewBag.SearchString = searchString;
            return View(model);
        }
        public void SetViewBag(long? selectedId = null)
        {
            var dao = new CategoryDao();
            ViewBag.CategoryID = new SelectList(dao.ListAll(), "ID", "Name", selectedId);
        }
        [HttpGet]
        public ActionResult Create()
        {
            SetViewBag();
            return View();
        }
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult Create(Product sp, HttpPostedFileBase fileUpload)
        {
            OnlineDbContext db = new OnlineDbContext();
            if (fileUpload == null)
            {
                ViewBag.ThongBao = "chọn hình ảnh";
                return View();

            }
            if (ModelState.IsValid)
            {
                //lưu tên của file ,fileUpload.fileName lấy được tên của ảnh
                var filename = Path.GetFileName(fileUpload.FileName);
                //lưu đường dẫn của file
                // Combine truyền 2 tham số : 1 đường dẫn đến mục AnhSanPham
                var path = Path.Combine(Server.MapPath("~/Content/images/AnhSanPham/"), filename);
                //kiểm tra h/a đã tồn tại chưa
                if (System.IO.File.Exists(path))
                {
                    ViewBag.ThongBao = "Hình ảnh đã tồn tại";
                }
                else
                {
                    fileUpload.SaveAs(path);
                }
                sp.Image = fileUpload.FileName;
                db.Products.Add(sp);
                db.SaveChanges();
            }
            ViewBag.CategoryId = new SelectList(db.Categories.ToList().OrderBy(n => n.ID), "ID", "Name");
            return RedirectToAction("Index");
        }
        [HttpGet]
        public ActionResult Edit(long id)
        {
            var dao = new ProductDao();
            var product = dao.GetByID(id);
            SetViewBag(product.CategoryID);
            return View(product);
        }

        [HttpPost]
        public ActionResult Edit(Product sp, HttpPostedFileBase fileUpload)
        {
            OnlineDbContext db = new OnlineDbContext();
            var dao = new ProductDao();
            if (fileUpload == null)
            {
                ViewBag.ThongBao = "Chọn hình ảnh";
                return View();
            }

            if (ModelState.IsValid)
            {
                //lưu tên của file ,fileUpload.fileName lấy được tên của ảnh
                var filename = Path.GetFileName(fileUpload.FileName);
                //lưu đường dẫn của file
                // Combine truyền 2 tham số : 1 đường dẫn đến mục AnhSanPham
                var path = Path.Combine(Server.MapPath("~/Content/images/AnhSanPham/"), filename);
                //kiểm tra h/a đã tồn tại chưa
                if (System.IO.File.Exists(path))
                {
                    ViewBag.ThongBao = "Hình ảnh đã tồn tại";
                }
                else
                {
                    fileUpload.SaveAs(path);
                }
                sp.Image = fileUpload.FileName;
                var result = dao.Update(sp);
                if (result)
                {
                    //SetAlert("Sửa user thành công", "success");
                    return RedirectToAction("Index", "Product");
                }
                else
                {
                    ModelState.AddModelError("", "Cập nhật không thành công");
                }
            }
            //SetViewBag(sp.CategoryID);
            ViewBag.CategoryId = new SelectList(db.Categories.ToList().OrderBy(n => n.ID), "ID", "Name");
            return RedirectToAction("Index");
        }
    }
}