﻿using Model.Dao;
using Model.EF;
using Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using btlonweb.Areas.Admin.Controllers;

namespace btlonweb.Areas.Admin.Controllers
{
    public class CategoryController : BaseController
    {
        // GET: Admin/Category
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Create()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Create(Category model)
        {
            //if (ModelState.IsValid)
            //{
            //    var currentCulture = Session[Common.CommonConstants.CurrentCulture];
            //    model.Language = currentCulture.ToString();
            //    var id = new CategoryDao().Insert(model);
            //    if (id > 0)
            //    {
            //        return RedirectToAction("Index");
            //    }
            //    else
            //    {
            //        ModelState.AddModelError("", StaticResources.Resources.InsertCategoryFailed);
            //    }
            //}
            return View();
        }
    }
}