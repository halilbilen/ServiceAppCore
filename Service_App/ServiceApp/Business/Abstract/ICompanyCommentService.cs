using Core.Utilities.Results;
using Entities.Concrete;
using System;
using System.Collections.Generic;
using System.Text;

namespace Business.Abstract
{
    public interface ICompanyCommentService
    {
        Entities.Dto.Response.CompanyComment.Edit UpdateComment(Entities.Dto.Request.CompanyComment.Edit request);
        Entities.Dto.Response.CompanyComment.Get GetCompanyComment(Entities.Dto.Request.CompanyComment.Get request);
        Entities.Dto.Response.CompanyComment.Create Add(Entities.Dto.Request.CompanyComment.Create request);
        Entities.Dto.Response.CompanyComment.GetUserId GetCommentByUserId(Entities.Dto.Request.CompanyComment.GetUserId request);
    }
}
