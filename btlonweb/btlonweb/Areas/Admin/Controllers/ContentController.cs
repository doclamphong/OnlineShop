using btlonweb.Common;
using Model.Dao;
using Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.IO;


namespace btlonweb.Areas.Admin.Controllers
{
    public class ContentController : Controller
    {
        // GET: Admin/Content
        [HttpGet]
        public ActionResult Index(string searchString, int page=1, int pageSize=2)
        {
            var dao = new ContentDao();
            var model = dao.ListAllPaging(searchString, page, pageSize);
            ViewBag.SearchString = searchString;
            return View(model);
        }
        [HttpGet]
        public ActionResult Create()
        {
            SetViewBag();
            return View();
        }
        [HttpGet]
        public ActionResult Edit(long id)
        {
            var dao = new ContentDao();
            var content = dao.GetByID(id);
            SetViewBag(content.CategoryID);
            return View(content);
        }
        
        [HttpPost]
        public ActionResult Edit(Content model)
        {
            if (ModelState.IsValid)
            {

            }
            SetViewBag(model.CategoryID);
            return View();
        }

        [HttpPost]
        [ValidateInput(false)]
        public ActionResult Create(Content sp,HttpPostedFileBase fileUpload)
        {
            OnlineDbContext db = new OnlineDbContext();
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
                db.Contents.Add(sp);
                db.SaveChanges();
            }
            ViewBag.CategoryId = new SelectList(db.Categories.ToList().OrderBy(n=>n.ID), "ID", "Name");
            return RedirectToAction("Index");
        }
        [HttpDelete]
        public ActionResult Delete(int id)
        {
            new ContentDao().Delete(id);

            return RedirectToAction("Index");
        }
        public void SetViewBag(long? selectedId = null)
        {
            var dao = new CategoryDao();
            ViewBag.CategoryID = new SelectList(dao.ListAll(), "ID", "Name", selectedId);
        }
    }
}