using System;
using System.Collections.Generic;

namespace Entities.Concrete
{
    public partial class Notification
    {
        public int NotificationId { get; set; }
        public int? UserId { get; set; }
        public string Content { get; set; }
        public DateTime? Date { get; set; }
        public int? CreatedUserId { get; set; }
        public DateTime? CreatedDate { get; set; }
        public int? ModifiedUserId { get; set; }
        public DateTime? ModifiedDate { get; set; }
        public int? StatusId { get; set; }
    }
}
