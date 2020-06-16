using Business.Abstract;
using Core.Aspects.Autofac.Caching;
using Core.Extensions;
using Core.Utilities.AllCode;
using Core.Utilities.Messages;
using Core.Utilities.Results;
using DataAccess.Abstract;
using Entities.Concrete;
using System;
using System.Collections.Generic;
using System.Text;

namespace Business.Concrete
{
    public class CompanyCommentManager : ICompanyCommentService
    {
        private ICompanyCommentDal _companyCommentDal;
        private IUserDal _userDal;
        public CompanyCommentManager(ICompanyCommentDal companyCommentDal, IUserDal userDal)
        {
            _companyCommentDal = companyCommentDal;
            _userDal = userDal;
        }

        public Entities.Dto.Response.CompanyComment.Create Add(Entities.Dto.Request.CompanyComment.Create request)
        {
            if (request.UserId <= 0) { return new Entities.Dto.Response.CompanyComment.Create { ReturnCode = Value.UserNotFound.ToInteger(), ReturnMessage = Messages.UserNotFound }; }
            var user = _userDal.FirstByAsNoTracking(p => p.UserId == request.UserId);
            if (user == null) { return new Entities.Dto.Response.CompanyComment.Create { ReturnCode = Value.UserNotFound.ToInteger(), ReturnMessage = Messages.UserNotFound }; }
            if (request.Comment == null) { return new Entities.Dto.Response.CompanyComment.Create { ReturnCode = Value.CommentNotNull.ToInteger(), ReturnMessage = Messages.CommentNotNull }; }
            if (request.Vote <= 0) { return new Entities.Dto.Response.CompanyComment.Create { ReturnCode = Value.VoteNotNull.ToInteger(), ReturnMessage = Messages.VoteNotNull }; }
            var entity = new Entities.Concrete.CompanyComment()
            {
                UserId = request.UserId,
                CompanyId = request.CompanyId,
                Comment = request.Comment,
                Vote = request.Vote,
                CreatedUserId = request.UserId,
                CreatedDate = DateTime.Now,
                StatusId = 1
            };
            _companyCommentDal.Add(entity);
            return new Entities.Dto.Response.CompanyComment.Create { ReturnCode = Value.CommentAdded.ToInteger(), ReturnMessage = Messages.CommentAdded };
        }

        [CacheAspect]
        public Entities.Dto.Response.CompanyComment.Get GetCompanyComment(Entities.Dto.Request.CompanyComment.Get request)
        {
            var entity = _companyCommentDal.GetCompanyComment(request.CompanyId, request.StatusId);
            if (entity == null)
            {
                return new Entities.Dto.Response.CompanyComment.Get { ReturnCode = Value.CompanyCommentNotFound.ToInteger(), ReturnMessage = Messages.CompanyCommentNotFound };
            }
            var result = new Entities.Dto.Response.CompanyComment.Get()
            {
                CompanyComments = entity,
                ReturnCode = Value.Success.ToInteger(),
                ReturnMessage = Messages.Success
            };
            return result;
        }

        public Entities.Dto.Response.CompanyComment.Edit UpdateComment(Entities.Dto.Request.CompanyComment.Edit request)
        {
            if (request.UserId <= 0) { return new Entities.Dto.Response.CompanyComment.Edit { ReturnCode = Value.UserNotFound.ToInteger(), ReturnMessage = Messages.UserNotFound }; }
            var user = _userDal.FirstByAsNoTracking(p => p.UserId == request.UserId);
            if (user == null) { return new Entities.Dto.Response.CompanyComment.Edit { ReturnCode = Value.UserNotFound.ToInteger(), ReturnMessage = Messages.UserNotFound }; }
            if (request.Comment == null) { return new Entities.Dto.Response.CompanyComment.Edit { ReturnCode = Value.CommentNotNull.ToInteger(), ReturnMessage = Messages.CommentNotNull }; }
            if (request.Vote <= 0) { return new Entities.Dto.Response.CompanyComment.Edit { ReturnCode = Value.VoteNotNull.ToInteger(), ReturnMessage = Messages.VoteNotNull }; }
            var comment = _companyCommentDal.Get(p => p.CompanyCommentId == request.CompanyCommentId);

            comment.Comment = request.Comment;
            comment.Vote = request.Vote;
            comment.ModifiedUserId = comment.UserId;
            comment.ModifiedDate = DateTime.Now;
            _companyCommentDal.Update(comment);
            return new Entities.Dto.Response.CompanyComment.Edit { };
        }
    }
}
