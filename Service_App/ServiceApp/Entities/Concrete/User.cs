using System;
using System.Collections.Generic;

namespace Entities.Concrete
{
    public partial class User
    {
        public int UserId { get; set; }
        public string Name { get; set; }
        public string Surname { get; set; }
        public string Email { get; set; }
        public byte[] PasswordHash { get; set; }
        public byte[] PasswordSalt { get; set; }
        public int? GenderId { get; set; }
        public string CityCode { get; set; }
        public string CountryCode { get; set; }
        public string GsmNo { get; set; }
        public string VerificationCode { get; set; }
        public int? AllowNotification { get; set; }
        public int? AllowSms { get; set; }
        public string DeviceToken { get; set; }
        public int? CreatedUserId { get; set; }
        public DateTime? CreatedDate { get; set; }
        public int? ModifiedUserId { get; set; }
        public DateTime? ModifiedDate { get; set; }
        public int? StatusId { get; set; }
    }
}
