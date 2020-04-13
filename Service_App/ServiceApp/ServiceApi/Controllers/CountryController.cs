using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Business.Abstract;
using Entities.Dto.Response;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace ServiceApi.Controllers
{
    [Produces("application/json")]
    [Route("[controller]/[action]")]
    [ApiController]
    public class CountryController : BaseController
    {
        private ICountryService _countryService;

        public CountryController(ICountryService countryService, IHttpContextAccessor accessor) : base(accessor)
        {
            _countryService = countryService;
            _accessor = accessor;
        }

        [HttpPost]
        public IActionResult List([FromBody]Entities.Dto.Request.Country.List request)
        {

            if (request == null) { return BadRequest(); }
            request.ClientIp = _accessor.HttpContext.Connection.RemoteIpAddress.ToString();
            request.ClientUserAgent = _accessor.HttpContext.Request.Headers["User-Agent"].ToString();
            request.AcceptLanguage = _accessor.HttpContext.Request.Headers["Accept-Language"].ToString();
            var result = _countryService.GetAll(request);
            return Ok(new Response<Country.List> { Data = result, ReturnCode = result.ReturnCode, ReturnMessage = result.ReturnMessage });
        }
    }
}