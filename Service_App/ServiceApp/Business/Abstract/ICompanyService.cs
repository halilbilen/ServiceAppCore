using Core.Utilities.Results;
using Entities.Concrete;
using Entities.Dto;
using System;
using System.Collections.Generic;
using System.Text;

namespace Business.Abstract
{
    public interface ICompanyService
    {
        Entities.Dto.Response.Company.List GetCompany(Request.Company.Get request);
        IDataResult<List<Company>> GetList();
        IResult Add(Company company);
        IResult Delete(Company company);
        IResult Update(Company company);
    }
}
