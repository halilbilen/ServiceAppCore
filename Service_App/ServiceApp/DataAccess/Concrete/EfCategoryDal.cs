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
    public class EfCategoryDal : EfBaseRepository<Entities.Concrete.Category, ServiceAppContext>, ICategoryDal
    {
        public Entities.Map.Category GetByCategoryId(int categoryId)
        {

            int statusId = 1;
            object p0 = new MySqlParameter { ParameterName = "pCategoryId", MySqlDbType = MySqlDbType.Int32, Value = categoryId, Direction = System.Data.ParameterDirection.Input };
            object p1 = new MySqlParameter { ParameterName = "pStatusId", MySqlDbType = MySqlDbType.Int32, Value = statusId, Direction = System.Data.ParameterDirection.Input };
            object[] parameters = { p0, p1 };
            const string sql = "CALL `ServiceApp`.`GetCategoryId`(@pCategoryId,@pStatusId);";
            var collection = _context.Categories.FromSqlRaw(sql, parameters).AsNoTracking().AsEnumerable().FirstOrDefault();
            return collection;
        }
    }
}
