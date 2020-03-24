using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Business.Abstract;
using Entities.Dto;
using Entities.Dto.Response;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace ServiceApi.Controllers
{
    [Produces("application/json")]
    [Route("[controller]/[action]")]
    [ApiController]
    public class CompanyController : ControllerBase
    {
        private ICompanyService _companyService;
        private IHttpContextAccessor _accessor;

        public CompanyController(ICompanyService companyService, IHttpContextAccessor accessor)
        {
            _companyService = companyService;
            _accessor = accessor;
        }

        [HttpPost]
        public IActionResult Get([FromBody]Entities.Dto.Request.Company.Get request)
        {
            request.ClientIp = _accessor.HttpContext.Connection.RemoteIpAddress.ToString();
            request.ClientUserAgent = _accessor.HttpContext.Request.Headers["User-Agent"].ToString();
            request.AcceptLanguage = _accessor.HttpContext.Request.Headers["Accept-Language"].ToString();
            var result = _companyService.GetCompany(request);
            return Ok(new Response<Company.List> { Data = result, ReturnCode = result.ReturnCode, ReturnMessage = result.ReturnMessage });
        }

    }
}