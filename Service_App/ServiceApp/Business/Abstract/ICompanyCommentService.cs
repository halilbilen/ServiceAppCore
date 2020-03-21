using Core.Utilities.Results;
using Entities.Concrete;
using System;
using System.Collections.Generic;
using System.Text;

namespace Business.Abstract
{
    public interface ICompanyCommentService
    {
        IDataResult<CompanyComment> GetById(int CategoryId);
        IDataResult<List<CompanyComment>> GetList();
        IResult Add(CompanyComment Category);
        IResult Delete(CompanyComment Category);
        IResult Update(CompanyComment Category);
    }
}
