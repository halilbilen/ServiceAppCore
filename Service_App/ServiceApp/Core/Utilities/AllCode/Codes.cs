using System;
using System.Collections.Generic;
using System.Text;

namespace Core.Utilities.AllCode
{
    public enum Value
    {
        Success = 200,
        BadRequest = 400,
        InternalServerError = 500,
        UserNotFound = 1004,
        InvalidEmail = 1009,
        ExistEmail = 1010,
        InvalidPassword = 1022
    }
}
