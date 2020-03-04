using Core.DataAccess.EntityFramework;
using DataAccess.Abstract;
using Core.Entity.Concrete;
using System;
using System.Collections.Generic;
using System.Text;
using System.Linq;
using Entities.Concrete;

namespace DataAccess.Concrete
{
    public class EfUserDal : EfBaseRepository<Core.Entity.Concrete.User, ServiceAppContext>, IUserDal
    {
        public List<Core.Entity.Concrete.OperationClaim> GetClaims(Core.Entity.Concrete.User user)
        {
            using (var context = new ServiceAppContext())
            {
                var result = from operationClaim in context.OperationClaim
                             join userOperationClaim in context.UserOperationClaim
                             on operationClaim.Id equals userOperationClaim.OperationClaimId
                             where userOperationClaim.UserId == user.Id
                             select new Core.Entity.Concrete.OperationClaim { Id = operationClaim.Id, Name = operationClaim.Name };
                return result.ToList();
            }
        }
    }
}
