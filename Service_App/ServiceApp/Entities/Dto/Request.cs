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

    public class Paging
    {
        private int _page;
        public int Page
        {
            get
            {
                return _page <= 0 ? 1 : _page;
            }
            set
            {
                _page = value;
            }
        }
        private int _count;
        [JsonIgnore]
        public int Count
        {
            get
            {
                return _count <= 0 ? int.MaxValue : _count;
            }
            set
            {
                _count = value;
            }
        }
        [JsonIgnore]
        public int Offset => Page <= 0 ? 0 : (Page - 1) * Count;
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
    }

    public class Category : Common
    {
        public class Create : Common
        {
            public string Name { get; set; }
            public string Description { get; set; }
            public IFormFile Media { get; set; }
        }

        public class List:Paging
        {

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
            public int CompanyId { get; set; }
        }
    }

}
