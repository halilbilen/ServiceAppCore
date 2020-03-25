using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Text;

namespace Core.Utilities.AllCode
{
    public enum Value
    {
        Success = 200,
        BadRequest = 400,
        CategoryNotFound = 404,
        InternalServerError = 500,
        UserNotFound = 1004,
        InvalidEmail = 1009,
        ExistEmail = 1010,
        InvalidPassword = 1022,
        ServiceNotFound = 1023
    }

    public enum Status
    {
        [Description("Pasif")]
        Passive = 0,
        [Description("Aktif")]
        Active = 1,
        [Description("Silindi")]
        Deleted = 2
    }

    public enum UserStatus
    {
        [Description("Pasif")]
        Passive = Status.Passive,
        [Description("Aktif")]
        Active = Status.Active,
        [Description("Silindi")]
        Deleted = Status.Deleted,
        [Description("Doğrulama bekliyor")]
        EmailVerificationExpected = 3
    }
}
