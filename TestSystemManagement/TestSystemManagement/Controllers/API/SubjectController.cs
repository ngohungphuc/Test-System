﻿using System.Collections.Generic;
using System.Web.Http;
using TestSystemManagement.Models;
using TestSystemManagement.Repository;

namespace TestSystemManagement.Controllers.API
{
    public class SubjectController : ApiController
    {
        private readonly SubjectRepository _repo = new SubjectRepository();

        // GET api/<controller>
        public IEnumerable<string> Get()
        {
            return new string[] { "value1", "value2" };
        }

        // GET api/<controller>/5
        public string Get(int id)
        {
            return "value";
        }

        [HttpPost]
        // POST api/<controller>
        public IHttpActionResult Post([FromBody]TestSubject dataTestSubject)
        {
            if (dataTestSubject == null)
            {
                return BadRequest("Data is empty");
            }
            else
            {
                _repo.AddSubject(dataTestSubject);
            }
            return Ok("success");
        }

        // PUT api/<controller>/5
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE api/<controller>/5
        public void Delete(int id)
        {
        }
    }
}