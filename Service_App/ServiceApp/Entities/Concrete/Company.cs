using System;
using System.Collections.Generic;

namespace Entities.Concrete
{
    public partial class Company
    {
        public int Id { get; set; }
        public int? UserId { get; set; }
        public string Name { get; set; }
        public int? TypeId { get; set; }
        public int? WorkTime { get; set; }
        public byte[] Media { get; set; }
        public string CityCode { get; set; }
        public string CountryCode { get; set; }
        public string GsmNo { get; set; }
        public string Email { get; set; }
        public string About { get; set; }
        public int? CreatedUserId { get; set; }
        public DateTime? CreatedDate { get; set; }
        public int? ModifiedUserId { get; set; }
        public DateTime? ModifiedDate { get; set; }
        public int? StatusId { get; set; }
    }
}
