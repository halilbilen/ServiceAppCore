using Business.Abstract;
using Core.Utilities.Results;
using Entities.Concrete;
using System;
using System.Collections.Generic;
using System.Text;

namespace Business.Concrete
{
    public class CompanyManager : ICompanyService
    {
        public IResult Add(Company Category)
        {
            throw new NotImplementedException();
        }

        public IResult Delete(Company Category)
        {
            throw new NotImplementedException();
        }

        public IDataResult<Company> GetById(int CategoryId)
        {
            throw new NotImplementedException();
        }

        public IDataResult<List<Company>> GetList()
        {
            throw new NotImplementedException();
        }

        public IResult Update(Company Category)
        {
            throw new NotImplementedException();
        }
    }
}
