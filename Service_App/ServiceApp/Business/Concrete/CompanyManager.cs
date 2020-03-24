using Business.Abstract;
using Core.Utilities.Results;
using DataAccess.Abstract;
using Entities.Concrete;
using Entities.Dto;
using System;
using System.Collections.Generic;
using System.Text;

namespace Business.Concrete
{
    public class CompanyManager : ICompanyService
    {
        private ICompanyDal _companyDal;

        public CompanyManager(ICompanyDal companyDal)
        {
            _companyDal = companyDal;
        }

        public IResult Add(Entities.Concrete.Company company)
        {
            throw new NotImplementedException();
        }

        public IResult Delete(Entities.Concrete.Company company)
        {
            throw new NotImplementedException();
        }

        public Entities.Dto.Response.Company.List GetCompany(Entities.Dto.Request.Company.Get request)
        {
            var company = _companyDal.Get(filter: p => p.CompanyId == request.CompanyId);
            if (company == null)
            {
                return new Entities.Dto.Response.Company.List { ReturnCode = 10, ExceptionMessage = "Error" };
            }
            var data = new Entities.Dto.Response.Company.List
            {
                ReturnCode = 10,
                Name = company.Name,
                CityCode = company.CityCode,
                ReturnMessage = "Success"
            };
            return data;
        }

        public IDataResult<List<Entities.Concrete.Company>> GetList()
        {
            throw new NotImplementedException();
        }

        public IResult Update(Entities.Concrete.Company company)
        {
            throw new NotImplementedException();
        }
    }
}
