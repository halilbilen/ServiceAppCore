using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Business.Abstract;
using Entities.Concrete;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace ServiceApi.Controllers
{
    [Produces("application/json")]
    [Route("[controller]/[action]")]
    [ApiController]
    public class CategoryController : ControllerBase
    {
        private ICategoryService categoryService;

        public CategoryController(ICategoryService _categoryService)
        {
            categoryService = _categoryService;
        }

        [HttpGet]
        public IActionResult GetList()
        {
            var result = categoryService.GetList();
            if (result.Success)
            {
                return Ok(result.Data);
            }
            return BadRequest(result.Message);
        }

        [HttpGet]
        public IActionResult GetById(int CategoryId)
        {

            var result = categoryService.GetById(CategoryId);
            if (result.Success)
            {
                return Ok(result.Data);
            }
            return BadRequest(result.Message);
        }

        //[HttpPost]
        //public IActionResult Add([FromForm]Entities.Dto.Request.Category.Create request)
        //{
        //    if (request == null) { return BadRequest(); }
        //    var result = categoryService.Add(request);
        //    if (result.Success)
        //    {
        //        return Ok(result.Message);
        //    }
        //    return BadRequest(result.Message);
        //}

        //[HttpPost]
        //public IActionResult Update([FromBody]Category Category)
        //{
        //    if (Category == null) { return BadRequest(); }
        //    var result = categoryService.Update(Category);
        //    if (result.Success)
        //    {
        //        return Ok(result.Message);
        //    }
        //    return BadRequest(result.Message);
        //}

        //[HttpPost]
        //public IActionResult Delete([FromBody]Category Category)
        //{
        //    if (Category == null) { return BadRequest(); }
        //    var result = categoryService.Delete(Category);
        //    if (result.Success)
        //    {
        //        return Ok(result.Message);
        //    }
        //    return BadRequest(result.Message);
        //}
    }
}