using Microsoft.AspNetCore.Http;
using System;
using System.Collections.Generic;
using System.Text;
using System.Text.Json.Serialization;

namespace Entities.Dto
{
    public class Request
    {
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
        }

        public class Category : Common
        {
            public class Create : Common
            {
                public string Name { get; set; }
                public string Description { get; set; }
                public IFormFile Media { get; set; }
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
        }

        public class Company : Common
        {
            public class Get : Common
            {
                public int Id { get; set; }
            }
        }
    }
}
