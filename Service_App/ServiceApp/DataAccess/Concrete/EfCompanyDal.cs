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
    public class EfCompanyDal : EfBaseRepository<Entities.Concrete.Company, ServiceAppContext>, ICompanyDal
    {
        public List<Entities.Map.Company> GetByServiceId(int serviceId, int statusId)
        {
            object p0 = new MySqlParameter { ParameterName = "pServiceId", MySqlDbType = MySqlDbType.Int32, Value = serviceId, Direction = System.Data.ParameterDirection.Input };
            object p1 = new MySqlParameter { ParameterName = "pStatusId", MySqlDbType = MySqlDbType.Int32, Value = statusId, Direction = System.Data.ParameterDirection.Input };
            object[] parameters = { p0, p1 };
            const string sql = "CALL `ServiceApp`.`GetByServiceId`(@pServiceId,@pStatusId);";
            var collection = _context.Companies.FromSqlRaw(sql, parameters).AsNoTracking().AsEnumerable().ToList();
            return collection;
        }
    }
}
