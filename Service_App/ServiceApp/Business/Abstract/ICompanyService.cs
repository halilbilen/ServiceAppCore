using Core.Utilities.Results;
using Entities.Concrete;
using System;
using System.Collections.Generic;
using System.Text;

namespace Business.Abstract
{
    public interface ICompanyService
    {
        IDataResult<Company> GetById(int CategoryId);
        IDataResult<List<Company>> GetList();
        IResult Add(Company Category);
        IResult Delete(Company Category);
        IResult Update(Company Category);
    }
}
