﻿using System;
using System.Collections.Generic;

namespace Entities.Concrete
{
    public partial class Country
    {
        public int CountryId { get; set; }
        public string Code { get; set; }
        public string Name { get; set; }
        public DateTime? CreatedDate { get; set; }
        public int? CreatedUserId { get; set; }
        public DateTime? ModifiedDate { get; set; }
        public int? ModifiedUserId { get; set; }
        public int StatusId { get; set; }
    }
}
