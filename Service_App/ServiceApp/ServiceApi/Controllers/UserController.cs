using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Business.Abstract;
using Entities.Concrete;
using Entities.Dto;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace ServiceApi.Controllers
{
    [Produces("application/json")]
    [Route("[controller]/[action]")]
    [ApiController]
    public class UserController : ControllerBase
    {
        private IUserService _userService;
        private IHttpContextAccessor accessor;

        public UserController(IUserService userService, IHttpContextAccessor _accessor)
        {
            _userService = userService;
            accessor = _accessor;
        }

        [HttpPost]
        public ActionResult Login(Request.User.Login request)
        {
            request.ClientIp = accessor.HttpContext.Connection.RemoteIpAddress.ToString();
            request.ClientUserAgent = accessor.HttpContext.Request.Headers["User-Agent"].ToString();
            request.AcceptLanguage = accessor.HttpContext.Request.Headers["Accept-Language"].ToString();

            var userToLogin = _userService.Login(request);
            if (!userToLogin.Success)
            {
                return BadRequest(userToLogin.Message);
            }

            var result = _userService.CreateAccessToken(userToLogin.Data);
            if (result.Success)
            {
                return Ok(result.Data);
            }

            return BadRequest(result.Message);
        }

        [HttpPost]
        public ActionResult Register(Request.User.Register request)
        {
            //var userExists = userService.UserExists(request.Email);
            //if (!userExists.Success)
            //{
            //    return BadRequest(userExists.Message);
            //}

            var registerResult = _userService.Register(request);
            var result = _userService.CreateAccessToken(registerResult.Data);

            if (result.Success)
            {
                return Ok(result.Data);
            }

            return BadRequest(result.Message);
        }
    }
}