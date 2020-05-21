using Core.DataAccess.EntityFramework;
using DataAccess.Abstract;
using Entities.Concrete;
using Microsoft.EntityFrameworkCore;
using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DataAccess.Concrete
{
    public class EfCityDal : EfBaseRepository<Entities.Concrete.City, ServiceAppContext>, ICityDal
    {
        public List<Entities.Map.City> GetByCountryName(string countryName, int statusId)
        {
            object p0 = new MySqlParameter { ParameterName = "pCountryName", MySqlDbType = MySqlDbType.VarChar, Value = countryName, Direction = System.Data.ParameterDirection.Input };
            object p1 = new MySqlParameter { ParameterName = "pStatusId", MySqlDbType = MySqlDbType.Int32, Value = statusId, Direction = System.Data.ParameterDirection.Input };
            object[] parameters = { p0, p1 };
            const string sql = "CALL `ServiceApp`.`GetCityByCountryName`(@pCountryName,@pStatusId);";
            var collection = _context.Cities.FromSqlRaw(sql, parameters).AsNoTracking().AsEnumerable().ToList();
            return collection;
        }
    }
}
