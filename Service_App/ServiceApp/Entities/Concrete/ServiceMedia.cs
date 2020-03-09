﻿using System;
using System.Collections.Generic;

namespace Entities.Concrete
{
    public partial class ServiceMedia
    {
        public int ServiceMediaId { get; set; }
        public int? ServiceId { get; set; }
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
