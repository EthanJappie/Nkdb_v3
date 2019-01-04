using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Nkdb_v3.Extensions
{
    public static class DateTimeExtension
    {
        public static DateTime ToDateTimeFormat(this DateTime date)
        {
            return DateTime.Parse(date.ToString("dd-MM-yyyy"));
        }
    }
}