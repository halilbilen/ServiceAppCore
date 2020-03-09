using System;
using System.Collections.Generic;

namespace Entities.Concrete
{
    public partial class UserDevice
    {
        public int UserDeviceId { get; set; }
        public int? UserId { get; set; }
        public string DeviceToken { get; set; }
        public string Operator { get; set; }
        public string OperatingSystem { get; set; }
        public string OperatingSystemVersion { get; set; }
        public string Brand { get; set; }
        public string ApplicationVersion { get; set; }
        public int? CreatedUserId { get; set; }
        public DateTime? CreatedDate { get; set; }
        public int? ModifiedUserId { get; set; }
        public DateTime? ModifiedDate { get; set; }
        public int? StatusId { get; set; }
    }
}
