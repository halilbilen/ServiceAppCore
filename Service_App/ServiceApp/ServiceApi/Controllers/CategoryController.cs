using Business.Abstract;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ServiceApi.Controllers
{
    [Produces("application/json")]
    [Route("[controller]/[action]")]
    [ApiController]
    public class CategoryController : BaseController
    {
        private ICategoryService _categoryService;
        public CategoryController(ICategoryService categoryService, IHttpContextAccessor accessor) : base(accessor)
        {
            _accessor = accessor;
            _categoryService = categoryService;
        }

        [HttpPost]
        public IActionResult Get([FromBody]Entities.Dto.Request.Category.Get request)
        {
            if (request == null) { return BadRequest(); }
            request.ClientIp = _accessor.HttpContext.Connection.RemoteIpAddress.ToString();
            request.ClientUserAgent = _accessor.HttpContext.Request.Headers["User-Agent"].ToString();
            request.AcceptLanguage = _accessor.HttpContext.Request.Headers["Accept-Language"].ToString();

            var result = _categoryService.Get(request);
            return Ok(new Entities.Dto.Response.Response<Entities.Dto.Response.Category.Get> { Data = result, ReturnCode = result.ReturnCode, ReturnMessage = result.ReturnMessage });
        }

        [HttpPost]
        public IActionResult List([FromBody] Entities.Dto.Request.Category.List request)
        {
            if (request == null) { return BadRequest(); }
            request.ClientIp = _accessor.HttpContext.Connection.RemoteIpAddress.ToString();
            request.ClientUserAgent = _accessor.HttpContext.Request.Headers["User-Agent"].ToString();
            request.AcceptLanguage = _accessor.HttpContext.Request.Headers["Accept-Language"].ToString();
            var result = _categoryService.GetList(request);
            return Ok(new Entities.Dto.Response.Response<Entities.Dto.Response.Category.List> { Data = result, ReturnCode = result.ReturnCode, ReturnMessage = result.ReturnMessage });
        }

    }
}

