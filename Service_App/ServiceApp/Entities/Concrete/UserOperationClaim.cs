using System;
using System.Collections.Generic;

namespace Entities.Concrete
{
    public partial class UserOperationClaim
    {
        public int UserOperationId { get; set; }
        public int? UserId { get; set; }
        public int? OperationClaimId { get; set; }
        public int? CreatedUserId { get; set; }
        public DateTime? CreatedDate { get; set; }
        public int? ModifiedUserId { get; set; }
        public DateTime? ModifiedDate { get; set; }
        public int? StatusId { get; set; }
    }
}
