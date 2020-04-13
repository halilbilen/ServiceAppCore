using Core.DataAccess;
using Entities.Concrete;
using System;
using System.Collections.Generic;
using System.Text;

namespace DataAccess.Abstract
{
    public interface ICityDal : IEntityRepository<City>
    {
        List<Entities.Map.City> GetByCountryName(string countryName, int statusId);
    }
}
