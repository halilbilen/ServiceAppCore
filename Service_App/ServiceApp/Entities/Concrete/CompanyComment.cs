using System;
using System.Collections.Generic;

namespace Entities.Concrete
{
    public partial class CompanyComment
    {
        public int CompanyCommentId { get; set; }
        public int? CompanyId { get; set; }
        public int? UserId { get; set; }
        public int? Vote { get; set; }
        public string Comment { get; set; }
        public int? CreatedUserId { get; set; }
        public DateTime? CreatedDate { get; set; }
        public int? ModifiedUserId { get; set; }
        public DateTime? ModifiedDate { get; set; }
        public int? StatusId { get; set; }
    }
}
