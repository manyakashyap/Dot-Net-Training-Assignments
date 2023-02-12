using MVCPrjNW.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Data.Entity;


namespace MVCPrjNW.Controllers
{
    public class AssignmentController : Controller
    {
        NorthwindEntities NE = new NorthwindEntities();
        // GET: Assignment
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult GetCustomerResidingInGermany()
        {
            var Country = ("GetCustomerResidingInGermany", NE.Customers.Where(x => x.Country == "Germany").ToList());
            return View(Country);

        }

        public ActionResult GetCustByOrderId()
        {
            // var ord = ("GetCustByOrderId", NE.Orders.Where(o => o.OrderID == 10248).ToList());
            var ord = from o in NE.Orders
                      where o.OrderID == 10248
                      select o;
            return View(ord);
        }


    }
}