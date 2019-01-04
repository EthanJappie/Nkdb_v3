using Nkdb_v3.Enumeration;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Nkdb_v3.Models
{
    public class DashboardViewmodel
    {
        public int Id { get; set; }

        public string Firstname { get; set; }

        public string Middlename { get; set; }

        public string Lastname { get; set; }

        public int Age { get; set; }

        public string Tribe { get; set; }

        public RelationshipType RelationshipType { get; set; }
    }
}