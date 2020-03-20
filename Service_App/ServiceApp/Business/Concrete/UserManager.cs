using Business.Abstract;
using Business.ValidationRules.FluentValidation;
using Core.Aspects.Autofac.Logging;
using Core.Aspects.Autofac.Validation;
using Core.CrossCuttingConcerns.Logging.Log4Net.Loggers;
using Core.Utilities.Messages;
using Core.Utilities.Results;
using Core.Utilities.Security.Hashing;
using Core.Utilities.Security.JsonWebToken;
using DataAccess.Abstract;
using Entities.Concrete;
using Entities.Dto;
using System;
using System.Collections.Generic;
using System.Text;

namespace Business.Concrete
{
    public class UserManager : IUserService
    {
        private IUserDal userDal;
        private ITokenHelper tokenHelper;

        public UserManager(IUserDal _userDal, ITokenHelper _tokenHelper)
        {
            userDal = _userDal;
            tokenHelper = _tokenHelper;
        }

        public void Add(User user)
        {
            userDal.Add(user);
        }

        public User GetByMail(string email)
        {
            return userDal.Get(u => u.Email == email);
        }

        public List<OperationClaim> GetClaims(User user)
        {
            return userDal.GetClaims(user);
        }

        public IDataResult<AccessToken> CreateAccessToken(User user)
        {
            var claims = userDal.GetClaims(user);
            var accessToken = tokenHelper.CreateToken(user, claims);
            return new SuccessDataResult<AccessToken>(accessToken, Messages.AccessTokenCreated);
        }

        public IDataResult<User> Login(Request.User.Login request)
        {
            var userCheck = GetByMail(request.Email);

            if (userCheck == null)
            {
                return new ErrorDataResult<User>(Messages.UserNotFound);
            }

            if (!HashingHelper.VerifyPasswordHash(request.Password, userCheck.PasswordHash, passwordSalt: userCheck.PasswordSalt))
            {
                return new ErrorDataResult<User>(Messages.PasswordError);
            }

            return new SuccessDataResult<User>(userCheck, Messages.SuccessLogin);
        }

        // [LogAspect(typeof(JsonFileLogger))]
        [ValidationAspect(typeof(UserValidator), Priority = 2)]
        public IDataResult<User> Register(Request.User.Register request)
        {
            byte[] passwordHash, passwordSalt;
            HashingHelper.CreatePasswordHash(request.Password, out passwordHash, out passwordSalt);

            var user = new User
            {
                Email = request.Email,
                Name = request.Name,
                Surname = request.Surname,
                PasswordHash = passwordHash,
                PasswordSalt = passwordSalt,
                StatusId = 1
            };
            userDal.Add(user);
            return new SuccessDataResult<User>(user, Messages.UserRegistered);
        }

        public IResult UserExists(string email)
        {
            var userExists = GetByMail(email);
            if (userExists != null)
            {
                return new ErrorResult(Messages.UserAlreadyExists);
            }

            return new SuccessResult();
        }
    }
}
