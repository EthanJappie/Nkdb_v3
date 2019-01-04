using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Nkdb_v3.Enumeration;
using Nkdb_v3.Models;

namespace Nkdb_v3.Controllers
{
    public class DashboardController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        [Authorize]
        public ActionResult Dashboard()
        {
            return View();
        }

        public JsonResult GetRelationshipTypes()
        {
            var relationships = Enum.GetNames(typeof(RelationshipType)).ToList();
            return Json(relationships,JsonRequestBehavior.AllowGet);
        }

        public JsonResult AddFamilyMember(string firstname, string middlename, string lastname, string idnumber, string relationship, string tribe)
        {
            NkdbEntities db = new NkdbEntities();
            var userId = Session["UserId"].ToString();
            var familyMemberResult = db.AddFamilyMember(firstname, middlename, lastname, idnumber, relationship, int.Parse(tribe), userId);            

            return Json(familyMemberResult, JsonRequestBehavior.AllowGet);
        }

        public JsonResult GetTribes()
        {
            NkdbEntities db = new NkdbEntities();
            var _tribe = db.Tribes.Select(i => new TribeModels
            {
                TribeId = i.TribeId,
                TribeName = i.TribeName
            }).ToList();

            return Json(_tribe, JsonRequestBehavior.AllowGet);
        }
    }
}