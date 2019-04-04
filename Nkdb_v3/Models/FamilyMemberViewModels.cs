using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Nkdb_v3.Models
{
    public class FamilyMemberViewModels
    {
        public int FamilymemberId { get; set; }
        public string Firstname { get; set; }
        public string Middlename { get; set; }
        public string Lastname { get; set; }
        public string Tribe { get; set; }
        public string RelationshipType { get; set; }
        public string IdNumber { get; set; }
        public string TribeName { get; set; }
    }
}