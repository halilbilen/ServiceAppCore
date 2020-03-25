using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Entities.Dto.Response;
using Business.Abstract;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace ServiceApi.Controllers
{
    [Produces("application/json")]
    [Route("[controller]/[action]")]
    [ApiController]
    public class ServiceController : BaseController
    {
        private IServiceService _serviceService;

        public ServiceController(IServiceService serviceService, IHttpContextAccessor accessor) : base(accessor)
        {
            _serviceService = serviceService;
            _accessor = accessor;
        }

        [HttpPost]
        public IActionResult GetList(Entities.Dto.Request.Service.List request)
        {
            var result = _serviceService.GetList(request);

            return Ok(new Entities.Dto.Response.Response<Service.List> { ReturnCode = result.ReturnCode, ReturnMessage = result.ReturnMessage, Data = result });
        }
    }
}