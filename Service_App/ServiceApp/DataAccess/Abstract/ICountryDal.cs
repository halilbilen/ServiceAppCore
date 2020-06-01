using Core.DataAccess;
using Entities.Concrete;
using System;
using System.Collections.Generic;
using System.Text;

namespace DataAccess.Abstract
{
    public interface ICountryDal : IEntityRepository<Country>
    {
        List<Entities.Map.Country> GetAllCountry(int statusId);
    }
}
