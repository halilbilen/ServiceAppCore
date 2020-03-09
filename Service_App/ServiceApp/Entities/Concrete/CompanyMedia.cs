using System;
using System.Collections.Generic;

namespace Entities.Concrete
{
    public partial class CompanyMedia
    {
        public int CompanyMediaId { get; set; }
        public int? CompanyId { get; set; }
        public string Path { get; set; }
        public string Url { get; set; }
        public byte[] Media { get; set; }
        public int? CreatedUserId { get; set; }
        public DateTime? CreatedDate { get; set; }
        public int? ModifiedUserId { get; set; }
        public DateTime? ModifiedDate { get; set; }
        public int? StatusId { get; set; }
    }
}
