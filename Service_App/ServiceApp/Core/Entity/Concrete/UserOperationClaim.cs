﻿using Core.Entity;
using System;
using System.Collections.Generic;
using System.Text;

namespace Core.Entity.Concrete
{
    public class UserOperationClaim : IEntity
    {
        public int Id { get; set; }
        public int? UserId { get; set; }
        public int? OperationClaimId { get; set; }
        public int? CreatedUserId { get; set; }
        public DateTime? CreatedDate { get; set; }
        public int? ModifiedUserId { get; set; }
        public DateTime? ModifiedDate { get; set; }
        public int? StatusId { get; set; }
    }
}
