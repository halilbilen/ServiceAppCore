using System;
using System.Collections.Generic;
using System.Text;

namespace Core.Entity.Concrete
{
    public class User : IEntity
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public string Surname { get; set; }
        public string Email { get; set; }
        public byte[] PasswordHash { get; set; }
        public byte[] PasswordSalt { get; set; }
        public int GenderId { get; set; }
        public string BirthDate { get; set; }
        public string CityCode { get; set; }
        public string CountryCode { get; set; }
        public string GsmNo { get; set; }
        public string VerificationCode { get; set; }
        public string RegisteredDate { get; set; }
        public int AllowNotification { get; set; }
        public int AllowSms { get; set; }
        public string DeviceToken { get; set; }
        public int CreatedUserId { get; set; }
        public string CreatedDate { get; set; }
        public int ModifiedUserId { get; set; }
        public string ModifiedDate { get; set; }
        public int StatusId { get; set; }
    }
}
