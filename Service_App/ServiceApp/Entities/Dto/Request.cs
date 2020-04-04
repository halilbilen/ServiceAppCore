using Microsoft.AspNetCore.Http;
using System;
using System.Collections.Generic;
using System.Text;
using System.Text.Json.Serialization;

namespace Entities.Dto.Request
{
    public class Request
    {

    }

    public class Common
    {
        [JsonIgnore]
        public string ClientIp { get; set; }
        [JsonIgnore]
        public string ClientUserAgent { get; set; }
        [JsonIgnore]
        public string AcceptLanguage { get; set; }
    }

    public class User : Common
    {
        public class Login : Common
        {
            public string Email { get; set; }
            public string Password { get; set; }
        }

        public class Register : Common
        {
            public string Email { get; set; }
            public string Password { get; set; }
            public string Name { get; set; }
            public string Surname { get; set; }
        }

        public class ForgotPassword : Common
        {
            public string Email { get; set; }
        }

        public class ChangePassword : Common
        {
            public int UserId { get; set; }
            public string OldPassword { get; set; }
            public string NewPassword { get; set; }
        }

        public class Edit : Common
        {
            public int UserId { get; set; }
            public string CityCode { get; set; }
            public string CountryCode { get; set; }
            public int? AllowNotification { get; set; }
            public int? AllowSms { get; set; }
        }
    }

    public class Category : Common
    {
        public class Create : Common
        {
            public string Name { get; set; }
            public string Description { get; set; }
            public IFormFile Media { get; set; }
        }

        public class Edit : Common
        {
            public int CategoryId { get; set; }
        }

        public class Get:Common
        {
            public int CategoryId { get; set; }
        }
    }

    public class Service : Common
    {
        public class List : Common
        {
            public int CategoryId { get; set; }
            public int Page { get; set; }

            public List()
            {
                Page = 1;
            }
        }

        public class Edit : Common
        {
            public int ServiceId { get; set; }
        }

        public class Search : Common
        {
            public string Word { get; set; }
        }
    }

    public class CategoryMedia : Common
    {
        public class Create : Common
        {
            public string Name { get; set; }
            public string Description { get; set; }
            public IFormFile Media { get; set; }
        }

        public class Edit : Common
        {
            public int CategoryMediaId { get; set; }
        }
    }

    public class Company : Common
    {
        public class Get : Common
        {
            public int CompanyId { get; set; }
        }

        public class Edit : Common
        {
            public int CompanyId { get; set; }
        }
    }
}
