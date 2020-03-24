using System;
using System.Collections.Generic;
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

    public class Base
    {
        public int ReturnCode { get; set; }
        public string CultureInfo { get; set; }
        public string ReturnMessage { get; set; }
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
        public class List : Base
        {
            public string Name { get; set; }
            public string CityCode { get; set; }
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
    }
}
