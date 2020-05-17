using Business.Abstract;
using Business.ValidationRules.FluentValidation;
using Core.Aspects.Autofac.Validation;
using Core.Utilities.Messages;
using Core.Utilities.AllCode;
using Core.Utilities.Security.Hashing;
using Core.Utilities.Security.JsonWebToken;
using DataAccess.Abstract;
using Entities.Concrete;
using System;
using System.Collections.Generic;
using System.Text;
using Core.Extensions;

namespace Business.Concrete
{
    public class UserManager : IUserService
    {
        IUserDal _userDal;
        private ITokenHelper _tokenHelper;
        public byte[] passwordHash, passwordSalt;

        public UserManager(IUserDal userDal, ITokenHelper tokenHelper)
        {
            _userDal = userDal;
            _tokenHelper = tokenHelper;
        }

        public Entities.Dto.Response.User.ChangePassword ChangePassword(Entities.Dto.Request.User.ChangePassword request)
        {
            var user = _userDal.GetById(request.UserId);
            if (user == null)
            {
                return new Entities.Dto.Response.User.ChangePassword { ReturnCode = Value.UserNotFound.ToInteger(), ReturnMessage = Messages.UserNotFound };
            }
            if (!HashingHelper.VerifyPasswordHash(request.OldPassword, user.PasswordHash, passwordSalt: user.PasswordSalt))
            {
                return new Entities.Dto.Response.User.ChangePassword { ReturnCode = Value.InvalidPassword.ToInteger(), ReturnMessage = Messages.PasswordError };
            }

            HashingHelper.CreatePasswordHash(request.NewPassword, out passwordHash, out passwordSalt);
            user.PasswordHash = passwordHash;
            user.PasswordSalt = passwordSalt;
            user.ModifiedUserId = user.UserId;
            user.ModifiedDate = DateTime.Now;
            _userDal.Update(user);
            return new Entities.Dto.Response.User.ChangePassword { };
        }

        public AccessToken CreateAccessToken(Entities.Concrete.User user)
        {
            var claims = _userDal.GetClaims(user);
            return _tokenHelper.CreateToken(user, claims);
        }

        public Entities.Dto.Response.User.ForgotPassword ForgotPassword(Entities.Dto.Request.User.ForgotPassword request)
        {
            /* */
            throw new NotImplementedException();
        }

        public Entities.Concrete.User UserExists(string email)
        {
            return _userDal.FirstBy(p => p.Email == email);
        }

        [ValidationAspect(typeof(UserValidator), Priority = 2)]
        public Entities.Dto.Response.User.Login Login(Entities.Dto.Request.User.Login request)
        {
            var userExists = UserExists(request.Email);
            if (userExists == null)
            {
                return new Entities.Dto.Response.User.Login { ReturnCode = Value.UserNotFound.ToInteger(), ReturnMessage = Messages.UserNotFound };
            }
            if (!HashingHelper.VerifyPasswordHash(request.Password, userExists.PasswordHash, passwordSalt: userExists.PasswordSalt))
            {
                return new Entities.Dto.Response.User.Login { ReturnCode = Value.InvalidPassword.ToInteger(), ReturnMessage = Messages.PasswordError };
            }
            var token = CreateAccessToken(userExists);
            return new Entities.Dto.Response.User.Login { Token = token.Token, ReturnCode = Value.Success.ToInteger(), ReturnMessage = Messages.SuccessLogin };
        }

        [ValidationAspect(typeof(UserValidator), Priority = 2)]
        public Entities.Dto.Response.User.Register Register(Entities.Dto.Request.User.Register request)
        {
            var userExists = UserExists(request.Email);
            if (userExists != null)
            {
                return new Entities.Dto.Response.User.Register { ReturnCode = Value.ExistEmail.ToInteger(), ReturnMessage = Messages.UserAlreadyExists };
            }

            HashingHelper.CreatePasswordHash(request.Password, out passwordHash, out passwordSalt);
            var user = new Entities.Concrete.User
            {
                Email = request.Email,
                Name = request.Name,
                Surname = request.Surname,
                PasswordHash = passwordHash,
                PasswordSalt = passwordSalt,
                StatusId = UserStatus.EmailVerificationExpected.ToInteger()
            };
            var token = CreateAccessToken(user);
            _userDal.Add(user);
            return new Entities.Dto.Response.User.Register { Token = token.Token, ReturnCode = 200, ReturnMessage = Messages.UserRegistered };
        }

        public Entities.Dto.Response.User.Edit Edit(Entities.Dto.Request.User.Edit request)
        {
            var userExists = _userDal.GetById(request.UserId);
            if (userExists == null)
            {
                return new Entities.Dto.Response.User.Edit { ReturnMessage = Messages.UserNotFound, ReturnCode = Value.UserNotFound.ToInteger() };
            }
            userExists.CityCode = request.CityCode;
            userExists.CountryCode = request.CountryCode;
            userExists.AllowNotification = request.AllowNotification;
            userExists.AllowSms = request.AllowSms;
            userExists.ModifiedUserId = request.UserId;
            userExists.ModifiedDate = DateTime.Now;
            _userDal.Update(userExists);
            return new Entities.Dto.Response.User.Edit { UserId = userExists.UserId, ReturnCode = Value.Success.ToInteger(), ReturnMessage = Messages.Success };
        }
    }
}
