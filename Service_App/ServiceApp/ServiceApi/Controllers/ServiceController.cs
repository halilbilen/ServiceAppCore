using System;
using System.Collections.Generic;
using System.Threading.Tasks;
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
            _accessor = accessor;
            _serviceService = serviceService;
        }

        [HttpPost]
        public async Task<IActionResult> GetAll(Entities.Dto.Request.Service.List? request)
        {
            if (request.Page <= 0) { request.Page = 1; }
            var result = await _serviceService.GetByCategoryId(request);
            return Ok(new Entities.Dto.Response.Response<Entities.Dto.Response.Service.List> { ReturnCode = result.ReturnCode, ReturnMessage = result.ReturnMessage, Data = result });
        }
    }
}