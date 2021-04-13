using AdventureWork.Web.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace AdventureWork.Web.Controllers
{
    public class NominaController : Controller
    {
        private AdventureWorks2019Entities db = new AdventureWorks2019Entities();

        // GET: Nomina
        public ActionResult Index()
        {
            return View(db.Nomina2.ToList());
        }
    }
}