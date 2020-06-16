using System;
using System.Collections.Generic;
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
    public class UserController : BaseController
    {
        private IUserService _userService;

        public UserController(IUserService userService, IHttpContextAccessor accessor) : base(accessor)
        {
            _userService = userService;
            _accessor = accessor;
        }

        [HttpPost]
        public ActionResult Login([FromBody]Entities.Dto.Request.User.Login request)
        {
            if (request == null) { return BadRequest(); }

            request.ClientIp = _accessor.HttpContext.Connection.RemoteIpAddress.ToString();
            request.ClientUserAgent = _accessor.HttpContext.Request.Headers["User-Agent"].ToString();
            request.AcceptLanguage = _accessor.HttpContext.Request.Headers["Accept-Language"].ToString();

            var result = _userService.Login(request);
            return Ok(new Entities.Dto.Response.Response<User.Login> { ReturnCode = result.ReturnCode, ReturnMessage = result.ReturnMessage, Data = result });
        }

        [HttpPost]
        public ActionResult Register([FromBody]Entities.Dto.Request.User.Register request)
        {
            if (request == null) { return BadRequest(); }

            request.ClientIp = _accessor.HttpContext.Connection.RemoteIpAddress.ToString();
            request.ClientUserAgent = _accessor.HttpContext.Request.Headers["User-Agent"].ToString();
            request.AcceptLanguage = _accessor.HttpContext.Request.Headers["Accept-Language"].ToString();

            var result = _userService.Register(request);

            return Ok(new Response<User.Register> { Data = result, ReturnCode = result.ReturnCode, ReturnMessage = result.ReturnMessage });
        }

        [HttpPost]
        public ActionResult ChangePassword([FromBody]Entities.Dto.Request.User.ChangePassword request)
        {
            if (request == null) { return BadRequest(); }

            request.ClientIp = _accessor.HttpContext.Connection.RemoteIpAddress.ToString();
            request.ClientUserAgent = _accessor.HttpContext.Request.Headers["User-Agent"].ToString();
            request.AcceptLanguage = _accessor.HttpContext.Request.Headers["Accept-Language"].ToString();

            var result = _userService.ChangePassword(request);

            return Ok(new Response<User.ChangePassword> { Data = result, ReturnCode = result.ReturnCode, ReturnMessage = result.ReturnMessage });
        }

        [HttpPost]
        public ActionResult Edit([FromBody]Entities.Dto.Request.User.Edit request)
        {
            if (request == null) { return BadRequest(); }

            request.ClientIp = _accessor.HttpContext.Connection.RemoteIpAddress.ToString();
            request.ClientUserAgent = _accessor.HttpContext.Request.Headers["User-Agent"].ToString();
            request.AcceptLanguage = _accessor.HttpContext.Request.Headers["Accept-Language"].ToString();

            var result = _userService.Edit(request);
            return Ok(new Response<User.Edit> { Data = result, ReturnCode = result.ReturnCode, ReturnMessage = result.ReturnMessage });
        }
    }
}