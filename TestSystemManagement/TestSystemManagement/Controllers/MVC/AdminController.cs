﻿using System;
using System.Linq;
using System.Web.Mvc;
using TestSystemManagement.Helpers;
using TestSystemManagement.Interfaces;
using TestSystemManagement.Models;
using TestSystemManagement.Repository;

namespace TestSystemManagement.Controllers.MVC
{
    [Session]
    public class AdminController : Controller
    {
        private readonly TestSystemManagementEntities _db = new TestSystemManagementEntities();
        private readonly ITestDetailRepository _testDetailRepository = new TestDetailRepository();

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult CreateQuestion()
        {
            return View();
        }

        public ActionResult ImportQuestion()
        {
            return View();
        }

        public ActionResult CourseManage()
        {
            return View();
        }

        public ActionResult DownloadQuestion()
        {
            return View();
        }

        [HttpPost]
        public ActionResult DownloadQuestion(int easy, int mid, int hard)
        {
            var resultEasy = _db.TestDetails
                .Where(x => x.TypeOfQuestion == 1).OrderBy(x => Guid.NewGuid()).Take(easy);
            var resultMid = _db.TestDetails
                .Where(x => x.TypeOfQuestion == 2).OrderBy(x => Guid.NewGuid()).Take(mid);
            var resultHard = _db.TestDetails
                .Where(x => x.TypeOfQuestion == 3).OrderBy(x => Guid.NewGuid()).Take(hard);

            var result = resultEasy.Union(resultMid).Union(resultHard).ToList();
            //_testDetailRepository.DownloadQuestion(result);
            //return new JsonResult { Data = result, JsonRequestBehavior = JsonRequestBehavior.AllowGet };
            return View(result);
        }

        public ActionResult UpdateQuestionDetail(int id)
        {
            var questionRemove = _db.TestDetails.SingleOrDefault(data => data.Id == id);

            return View(questionRemove);
        }
    }
}