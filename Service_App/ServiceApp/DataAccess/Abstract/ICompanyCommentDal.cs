using Core.DataAccess;
using Entities.Concrete;
using System;
using System.Collections.Generic;
using System.Text;

namespace DataAccess.Abstract
{
    public interface ICompanyCommentDal : IEntityRepository<CompanyComment>
    {
        List<Entities.Map.CompanyComment> GetCompanyComment(int companyId, int statusId);
    }
}
