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
    [Route("api/[controller]")]
    [ApiController]
    public class UserController : ControllerBase
    {
        private IUserService userService;
        private IHttpContextAccessor accessor;

        public UserController(IUserService _userService, IHttpContextAccessor _accessor)
        {
            userService = _userService;
            accessor = _accessor;

        }

        [HttpPost("login")]
        public ActionResult Login(Request.User.Login request)
        {
            request.ClientIp = accessor.HttpContext.Connection.RemoteIpAddress.ToString();
            request.ClientUserAgent = accessor.HttpContext.Request.Headers["User-Agent"].ToString();
            request.AcceptLanguage = accessor.HttpContext.Request.Headers["Accept-Language"].ToString();

            var userToLogin = userService.Login(request);
            if (!userToLogin.Success)
            {
                return BadRequest(userToLogin.Message);
            }

            var result = userService.CreateAccessToken(userToLogin.Data);
            if (result.Success)
            {
                return Ok(result.Data);
            }

            return BadRequest(result.Message);
        }

        [HttpPost("register")]
        public ActionResult Register(Request.User.Register request)
        {
            //var userExists = userService.UserExists(request.Email);
            //if (!userExists.Success)
            //{
            //    return BadRequest(userExists.Message);
            //}

            var registerResult = userService.Register(request);
            var result = userService.CreateAccessToken(registerResult.Data);

            if (result.Success)
            {
                return Ok(result.Data);
            }

            return BadRequest(result.Message);
        }
    }
}