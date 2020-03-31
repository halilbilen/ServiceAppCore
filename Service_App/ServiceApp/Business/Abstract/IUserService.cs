using Core.Utilities.Results;
using Core.Utilities.Security.JsonWebToken;
using Entities.Concrete;
using Entities.Dto.Request;
using Entities.Dto.Response;
using System;
using System.Collections.Generic;
using System.Text;

namespace Business.Abstract
{
    public interface IUserService
    {
        Entities.Dto.Response.User.Register Register(Entities.Dto.Request.User.Register request);
        Entities.Dto.Response.User.Login Login(Entities.Dto.Request.User.Login request);
        Entities.Dto.Response.User.ForgotPassword ForgotPassword(Entities.Dto.Request.User.ForgotPassword request);
        Entities.Dto.Response.User.ChangePassword ChangePassword(Entities.Dto.Request.User.ChangePassword request);
        AccessToken CreateAccessToken(Entities.Concrete.User user);
        Entities.Dto.Response.User.Edit Edit(Entities.Dto.Request.User.Edit request);
    }
}
