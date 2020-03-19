using System;
using System.Collections.Generic;
using System.Text;

namespace Core.CrossCuttingConcerns.Logging
{
    public class LogDetail
    {
        public string MethodName { get; set; }
        public string ExceptionMessage { get; set; }
        public DateTime LogDate { get; set; }
        public List<LogParameter> LogParameters { get; set; }
    }
}
