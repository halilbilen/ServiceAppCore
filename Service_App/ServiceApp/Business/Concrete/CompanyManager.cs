using Business.Abstract;
using Core.Extensions;
using Core.Utilities.AllCode;
using Core.Utilities.Messages;
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

        public Entities.Dto.Response.Company.Edit Edit(Entities.Dto.Request.Company.Edit request)
        {
            var company = _companyDal.Get(p => p.CompanyId == request.CompanyId && p.StatusId == Status.Active.ToInteger());
            if (company == null)
            {
                return new Entities.Dto.Response.Company.Edit { ReturnMessage = Messages.CompanyNotFound, ReturnCode = Value.CompanyNotFound.ToInteger() };
            }
            company.CompanyId = request.CompanyId;
            company.ModifiedUserId = request.CompanyId;
            company.ModifiedDate = DateTime.Now;
            _companyDal.Update(company);
            return new Entities.Dto.Response.Company.Edit { CompanyId = company.CompanyId, ReturnCode = Value.Success.ToInteger(), ReturnMessage = Messages.Success };
        }

        public Entities.Dto.Response.Company.Get GetByCompanyId(Entities.Dto.Request.Company.Get request)
        {
            var company = _companyDal.Get(filter: p => p.CompanyId == request.CompanyId && p.StatusId == Status.Active.ToInteger());
            if (company == null)
            {
                return new Entities.Dto.Response.Company.Get { ReturnCode = Value.CompanyNotFound.ToInteger(), ReturnMessage = Messages.CompanyNotFound };
            }

            var data = new Entities.Dto.Response.Company.Get
            {
                ReturnCode = Value.Success.ToInteger(),
                Name = company.Name,
                CityCode = company.CityCode,
                ReturnMessage = Messages.Success
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
