using Entities.Concrete;
using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;

namespace Entities.Dto.Response
{
    public class Response<T>
    {
        public int ReturnCode { get; set; }
        public string ReturnMessage { get; set; }
        public T Data { get; set; }

        public Response()
        {
            ReturnMessage = string.Empty;
        }
    }

    public class Paging : Base
    {
        public int TotalItems { get; set; }
        public int ItemsPerPage { get; set; }
        public int CurrentPage { get; set; }
        public int TotalPages()
        {
            return (int)Math.Ceiling((decimal)TotalItems / ItemsPerPage);
        }
    }

    public class Base
    {
        public int ReturnCode { get; set; }
        public string CultureInfo { get; set; }
        public string ReturnMessage { get; set; }
        [NotMapped]
        public bool Success => ReturnCode.Equals(200);
        public string ExceptionMessage { get; set; }
        public Base()
        {
            ExceptionMessage = string.Empty;
            CultureInfo = string.Empty;
        }
    }

    public class Company
    {
        public class Create : Base
        {

        }

        public class Get : Base
        {
            public string Name { get; set; }
            public string CityCode { get; set; }
        }

        public class Edit : Base
        {
            public int CompanyId { get; set; }
        }

        public class List : Base
        {
            public IEnumerable<Entities.Map.Company> Companies { get; set; }
        }
    }

    public class City
    {
        public class List : Base
        {
            public IEnumerable<Entities.Map.City> Cities { get; set; }
        }
    }

    public class Country
    {
        public class List : Base
        {
            public IEnumerable<Entities.Concrete.Country> Countries { get; set; }
        }
    }

    public class User
    {
        public class Register : Base
        {
            public string Token { get; set; }
        }

        public class Login : Base
        {
            public string Token { get; set; }
        }

        public class ForgotPassword : Base
        {

        }

        public class ChangePassword : Base
        {

        }

        public class Edit : Base
        {
            public int UserId { get; set; }
        }
    }

    public class Service : Base
    {
        public class List : Paging
        {
            public IEnumerable<Entities.Concrete.Service> Services { get; set; }
        }

        public class Edit : Base
        {
            public int ServiceId { get; set; }
        }

        public class Search : Base
        {
            public IEnumerable<Entities.Concrete.Service> Services { get; set; }
        }
    }

    public class Category
    {
        public class Create : Base
        {
            public string Name { get; set; }
            public string Description { get; set; }
        }

        public class Get : Base
        {
            public string Name { get; set; }
            public string Description { get; set; }
        }

        public class List : Base
        {
            public IEnumerable<Entities.Concrete.Category> Categories { get; set; }
        }
    }
}
