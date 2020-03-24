using System;
using System.Collections.Generic;
using System.Text;

namespace Core.Extensions
{
    public static class Conversions
    {
        public static int ToInteger(this Enum value)
        {
            return Convert.ToInt32(value);
        }
    }
}
