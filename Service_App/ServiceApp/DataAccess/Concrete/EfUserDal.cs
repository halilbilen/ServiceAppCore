using Core.DataAccess.EntityFramework;
using DataAccess.Abstract;
using System;
using System.Collections.Generic;
using System.Text;
using System.Linq;
using Entities.Concrete;
using Core.Utilities.AllCode;
using Core.Extensions;

namespace DataAccess.Concrete
{
    public class EfUserDal : EfBaseRepository<User, ServiceAppContext>, IUserDal
    {
        public User GetById(int userId)
        {
            return Get(filter: p => p.UserId == userId && p.StatusId == UserStatus.Active.ToInteger());
        }

        public List<OperationClaim> GetClaims(User user)
        {
            using (var context = new ServiceAppContext())
            {
                var result = from operationClaim in context.OperationClaim
                             join userOperationClaim in context.UserOperationClaim
                             on operationClaim.OperationClaimId equals userOperationClaim.OperationClaimId
                             where userOperationClaim.UserId == user.UserId
                             select new OperationClaim { OperationClaimId = operationClaim.OperationClaimId, Name = operationClaim.Name };
                return result.ToList();
            }
        }
    }
}
