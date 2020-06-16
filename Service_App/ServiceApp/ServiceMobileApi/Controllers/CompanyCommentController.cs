using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Business.Abstract;
using Entities.Dto.Response;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace ServiceMobileApi.Controllers
{
    [Produces("application/json")]
    [Route("[controller]/[action]")]
    [ApiController]
    public class CompanyCommentController : BaseController
    {
        private ICompanyCommentService _companyCommentService;
        public CompanyCommentController(ICompanyCommentService companyCommentService, IHttpContextAccessor accessor) : base(accessor)
        {
            _accessor = accessor;
            _companyCommentService = companyCommentService;
        }

        [HttpPost]
        public IActionResult Get([FromBody]Entities.Dto.Request.CompanyComment.Get request)
        {
            if (request == null) { return BadRequest(); }
            request.ClientIp = _accessor.HttpContext.Connection.RemoteIpAddress.ToString();
            request.ClientUserAgent = _accessor.HttpContext.Request.Headers["User-Agent"].ToString();
            request.AcceptLanguage = _accessor.HttpContext.Request.Headers["Accept-Language"].ToString();
            var result = _companyCommentService.GetCompanyComment(request);
            return Ok(new Response<CompanyComment.Get> { Data = result, ReturnCode = result.ReturnCode, ReturnMessage = result.ReturnMessage });
        }

    }
}