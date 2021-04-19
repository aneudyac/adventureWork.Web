using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;

namespace AdventureWork.Web.Utils
{
    public static class Utilerias
    {
        public static string DBConn = ConfigurationManager.ConnectionStrings["dbConn"].ConnectionString;
    }
}