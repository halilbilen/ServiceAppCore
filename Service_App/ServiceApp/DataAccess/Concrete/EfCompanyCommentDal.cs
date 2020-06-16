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
    public class EfCompanyCommentDal : EfBaseRepository<CompanyComment, ServiceAppContext>, ICompanyCommentDal
    {
        public List<Entities.Map.CompanyComment> GetCompanyComment(int companyId, int statusId)
        {
            object p0 = new MySqlParameter { ParameterName = "pCompanyId", MySqlDbType = MySqlDbType.Int32, Value = companyId, Direction = System.Data.ParameterDirection.Input };
            object p1 = new MySqlParameter { ParameterName = "pStatusId", MySqlDbType = MySqlDbType.Int32, Value = statusId, Direction = System.Data.ParameterDirection.Input };
            object[] parameters = { p0, p1 };
            const string sql = "CALL `ServiceApp`.`GetCompanyComment`(@pCompanyId,@pStatusId);";
            var collection = _context.CompanyComments.FromSqlRaw(sql, parameters).AsNoTracking().AsEnumerable().ToList();
            return collection;
        }
    }
}
