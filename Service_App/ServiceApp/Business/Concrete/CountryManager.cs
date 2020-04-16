using Business.Abstract;
using Core.Aspects.Autofac.Caching;
using Core.Extensions;
using Core.Utilities.AllCode;
using Core.Utilities.Messages;
using DataAccess.Abstract;
using Entities.Dto.Response;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Business.Concrete
{
    public class CountryManager : ICountryService
    {
        private ICountryDal _countryDal;

        public CountryManager(ICountryDal CountryDal)
        {
            _countryDal = CountryDal;
        }

        [CacheAspect]
        public Entities.Dto.Response.Country.List GetAll(Entities.Dto.Request.Country.List request)
        {
            if (request.StatusId <= 0) { request.StatusId = 1; }
            var entity = _countryDal.GetAll(p => p.StatusId == request.StatusId);
            if (entity == null)
            {
                return new Entities.Dto.Response.Country.List { ReturnCode = Value.CountryNotFound.ToInteger(), ReturnMessage = Messages.CountryNotFound };
            }
            var result = new Entities.Dto.Response.Country.List()
            {
                Countries = entity,
                ReturnCode = Value.Success.ToInteger(),
                ReturnMessage = Messages.Success
            };
            return result;
        }
    }
}
