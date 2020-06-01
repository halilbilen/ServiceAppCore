using Core.DataAccess.EntityFramework;
using DataAccess.Abstract;
using Entities.Concrete;
using Entities.Dto.Response;
using Microsoft.EntityFrameworkCore;
using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccess.Concrete
{
    public class EfServiceDal : EfBaseRepository<Entities.Concrete.Service, ServiceAppContext>, IServiceDal
    {
        public List<Entities.Map.Service> GetServiceByCategoryId(int categoryId, int statusId)
        {
            object p0 = new MySqlParameter { ParameterName = "pCategoryId", MySqlDbType = MySqlDbType.Int32, Value = categoryId, Direction = System.Data.ParameterDirection.Input };
            object p1 = new MySqlParameter { ParameterName = "pStatusId", MySqlDbType = MySqlDbType.Int32, Value = statusId, Direction = System.Data.ParameterDirection.Input };
            object[] parameters = { p0, p1 };
            const string sql = "CALL `ServiceApp`.`GetServiceByCategoryId`(@pCategoryId,@pStatusId);";
            var collection = _context.Services.FromSqlRaw(sql, parameters).AsNoTracking().AsEnumerable().ToList();
            return collection;
        }
    }
}
