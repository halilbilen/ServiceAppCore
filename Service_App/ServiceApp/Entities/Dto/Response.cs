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
        public bool Success => ReturnCode.Equals(0);
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
}
