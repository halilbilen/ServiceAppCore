using Business.Abstract;
using Core.Extensions;
using Core.Utilities.AllCode;
using Core.Utilities.Messages;
using DataAccess.Abstract;
using System;
using System.Collections.Generic;
using System.Text;

namespace Business.Concrete
{
    public class CityManager : ICityService
    {
        private ICityDal _cityDal;

        public CityManager(ICityDal cityDal)
        {
            _cityDal = cityDal;
        }

        public Entities.Dto.Response.City.List GetByCountryName(Entities.Dto.Request.City.List request)
        {
            if (request.CountryName == null) { return new Entities.Dto.Response.City.List { ReturnCode = Value.CountryNotFound.ToInteger(), ReturnMessage = Messages.CountryNotFound }; }
            if (request.StatusId <= 0) { request.StatusId = 1; }

            var entity = _cityDal.GetByCountryName(request.CountryName, request.StatusId);
            if (entity == null)
            {
                return new Entities.Dto.Response.City.List { ReturnCode = Value.CityNotFound.ToInteger(), ReturnMessage = Messages.CityNotFound };
            }
            var result = new Entities.Dto.Response.City.List()
            {
                Cities = entity,
                ReturnCode = Value.Success.ToInteger(),
                ReturnMessage = Messages.Success
            };
            return result;
        }
    }
}
