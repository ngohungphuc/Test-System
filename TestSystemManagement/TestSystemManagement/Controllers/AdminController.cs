﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TestSystem.Helpers;
using TestSystem.Models;
using TestSystemManagement.Core.Interfaces;

namespace TestSystemManagement.Controllers
{
    [Session]
    public class AdminController : Controller
    {
        private IUsersRepository repo;

        public AdminController(IUsersRepository repo)
        {
            this.repo = repo;
        }

        public ActionResult Login()
        {
            if (!string.IsNullOrEmpty(Constant.UserSession))
            {
                return RedirectToAction("Index");
            }
            return View();
        }

        [HttpPost]
        public JsonResult Login(string userName, string passWord)
        {
            var currentUser = repo.Login(userName, passWord);
            if (currentUser != null)
            {
                Session.Add(Constant.UserSession, currentUser);
                return new JsonResult { Data = true, JsonRequestBehavior = JsonRequestBehavior.AllowGet };
            }
            return new JsonResult { Data = false, JsonRequestBehavior = JsonRequestBehavior.AllowGet };
        }

        public ActionResult Index()
        {
            return View();
        }
    }
}