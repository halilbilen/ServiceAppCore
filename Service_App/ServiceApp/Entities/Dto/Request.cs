using Microsoft.AspNetCore.Http;
using System;
using System.Collections.Generic;
using System.Text;

namespace Entities.Dto
{
    public class Request
    {
        public class Common
        {
            public string ClientIp { get; set; }
            public string ClientUserAgent { get; set; }
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
                public string FirstName { get; set; }
                public string LastName { get; set; }
            }
        }

        public class Category : Common
        {
            public class Create : Common
            {
                public string Name { get; set; }
                public string Description { get; set; }
                public IFormFile Media { get; set; }
                public int? CreatedUserId { get; set; }
                public DateTime? CreatedDate { get; set; }
                public int? ModifiedUserId { get; set; }
                public DateTime? ModifiedDate { get; set; }
                public int? StatusId { get; set; }
            }
        }
    }
}
