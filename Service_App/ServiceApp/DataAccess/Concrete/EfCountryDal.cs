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
    public class EfCountryDal : EfBaseRepository<Entities.Concrete.Country, ServiceAppContext>, ICountryDal
    {
        public List<Entities.Map.Country> GetAllCountry(int statusId)
        {
            object p1 = new MySqlParameter { ParameterName = "pStatusId", MySqlDbType = MySqlDbType.Int32, Value = statusId, Direction = System.Data.ParameterDirection.Input };
            object[] parameters = { p1 };
            const string sql = "CALL `ServiceApp`.`GetAllCountry`(@pStatusId);";
            var collection = _context.Countries.FromSqlRaw(sql, parameters).AsNoTracking().AsEnumerable().ToList();
            return collection;
        }
    }
}
