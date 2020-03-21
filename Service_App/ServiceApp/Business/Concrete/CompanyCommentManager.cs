using Business.Abstract;
using Core.Utilities.Results;
using Entities.Concrete;
using System;
using System.Collections.Generic;
using System.Text;

namespace Business.Concrete
{
    public class CompanyCommentManager : ICompanyCommentService
    {
        public IResult Add(CompanyComment Category)
        {
            throw new NotImplementedException();
        }

        public IResult Delete(CompanyComment Category)
        {
            throw new NotImplementedException();
        }

        public IDataResult<CompanyComment> GetById(int CategoryId)
        {
            throw new NotImplementedException();
        }

        public IDataResult<List<CompanyComment>> GetList()
        {
            throw new NotImplementedException();
        }

        public IResult Update(CompanyComment Category)
        {
            throw new NotImplementedException();
        }
    }
}
