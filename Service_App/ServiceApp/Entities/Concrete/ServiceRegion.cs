﻿using System;
using System.Collections.Generic;

namespace Entities.Concrete
{
    public partial class ServiceRegion
    {
        public int ServiceRegionsId { get; set; }
        public int? CompanyId { get; set; }
        public int? CityId { get; set; }
        public int? CountryId { get; set; }
        public int? CreatedUserId { get; set; }
        public DateTime? CreatedDate { get; set; }
        public int? ModifiedUserId { get; set; }
        public DateTime? ModifiedDate { get; set; }
        public int? StatusId { get; set; }
    }
}
