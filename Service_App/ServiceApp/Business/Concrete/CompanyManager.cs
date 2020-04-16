using Business.Abstract;
using Core.Aspects.Autofac.Caching;
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
        private IServiceDal _serviceDal;

        public CompanyManager(ICompanyDal companyDal, IServiceDal serviceDal)
        {
            _companyDal = companyDal;
            _serviceDal = serviceDal;
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

        [CacheAspect]
        public Entities.Dto.Response.Company.List GetByServiceId(Entities.Dto.Request.Company.List request)
        {
            var service = _serviceDal.Get(p => p.ServiceId == request.ServiceId && p.StatusId == Status.Active.ToInteger());
            if (service == null) { return new Entities.Dto.Response.Company.List { ReturnCode = Value.ServiceNotFound.ToInteger(), ReturnMessage = Messages.ServiceNotFound }; }

            var entity = _companyDal.GetByServiceId(request.ServiceId, request.StatusId);
            if (entity == null)
            {
                return new Entities.Dto.Response.Company.List { ReturnCode = Value.CompanyNotFound.ToInteger(), ReturnMessage = Messages.CompanyNotFound };
            }
            var result = new Entities.Dto.Response.Company.List()
            {
                Companies = entity,
                ReturnCode = Value.Success.ToInteger(),
                ReturnMessage = Messages.Success
            };
            return result;

        }
    }
}
