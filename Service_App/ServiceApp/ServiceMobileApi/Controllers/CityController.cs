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
    public class CityController : BaseController
    {
        private ICityService _cityService;

        public CityController(ICityService cityService, IHttpContextAccessor accessor) : base(accessor)
        {
            _cityService = cityService;
            _accessor = accessor;
        }

        [HttpPost]
        public IActionResult List([FromBody]Entities.Dto.Request.City.List request)
        {
            if (request == null) { return BadRequest(); }
            request.ClientIp = _accessor.HttpContext.Connection.RemoteIpAddress.ToString();
            request.ClientUserAgent = _accessor.HttpContext.Request.Headers["User-Agent"].ToString();
            request.AcceptLanguage = _accessor.HttpContext.Request.Headers["Accept-Language"].ToString();
            var result = _cityService.GetByCountryName(request);
            return Ok(new Response<City.List> { Data = result, ReturnCode = result.ReturnCode, ReturnMessage = result.ReturnMessage });
        }
    }
}