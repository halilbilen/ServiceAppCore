using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace ServiceApi.Controllers
{
    [ApiController]
    public class BaseController : ControllerBase
    {
        public int pageSize = 3;
        public IHttpContextAccessor _accessor;
        public BaseController(IHttpContextAccessor accessor)
        {
            _accessor = accessor;
        }
    }
}