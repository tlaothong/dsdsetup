using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using TheS.eExam.DSDAdminRequest.DSA.EF;

namespace TheS.eExam.DSDAdminRequest.Controllers
{
    public class AdminRequestsController : Controller
    {
        private DSDAdminRequestContainer db = new DSDAdminRequestContainer();

        // GET: AdminRequests
        public ActionResult Index()
        {
            var adminRequests = db.AdminRequests.Include(a => a.Branch).Include(a => a.Province);
            return View(adminRequests.ToList());
        }

        // GET: AdminRequests/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            AdminRequest adminRequest = db.AdminRequests.Find(id);
            if (adminRequest == null)
            {
                return HttpNotFound();
            }
            return View(adminRequest);
        }

        // GET: AdminRequests/Create
        public ActionResult Create()
        {
            ViewBag.BranchId = new SelectList(db.Branches, "Code", "Name");
            ViewBag.ProvinceId = new SelectList(db.Provinces, "Code", "Name");
            return View();
        }

        // POST: AdminRequests/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,ContactEmail,TitleName,FirstName,LastName,PID,IsApproved,BranchId,ProvinceId")] AdminRequest adminRequest)
        {
            if (ModelState.IsValid)
            {
                db.AdminRequests.Add(adminRequest);
                db.SaveChanges();
                return RedirectToAction("Index", "Home");
            }

            ViewBag.BranchId = new SelectList(db.Branches, "Id", "Code", adminRequest.BranchId);
            ViewBag.ProvinceId = new SelectList(db.Provinces, "Id", "Code", adminRequest.ProvinceId);
            return View(adminRequest);
        }

        // GET: AdminRequests/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            AdminRequest adminRequest = db.AdminRequests.Find(id);
            if (adminRequest == null)
            {
                return HttpNotFound();
            }
            ViewBag.BranchId = new SelectList(db.Branches, "Id", "Code", adminRequest.BranchId);
            ViewBag.ProvinceId = new SelectList(db.Provinces, "Id", "Code", adminRequest.ProvinceId);
            return View(adminRequest);
        }

        // POST: AdminRequests/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,ContactEmail,TitleName,FirstName,LastName,PID,IsApproved,BranchId,ProvinceId")] AdminRequest adminRequest)
        {
            if (ModelState.IsValid)
            {
                db.Entry(adminRequest).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.BranchId = new SelectList(db.Branches, "Id", "Code", adminRequest.BranchId);
            ViewBag.ProvinceId = new SelectList(db.Provinces, "Id", "Code", adminRequest.ProvinceId);
            return View(adminRequest);
        }

        // GET: AdminRequests/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            AdminRequest adminRequest = db.AdminRequests.Find(id);
            if (adminRequest == null)
            {
                return HttpNotFound();
            }
            return View(adminRequest);
        }

        // GET: AdminRequests/Create2
        public ActionResult Create2()
        {
            ViewBag.BranchId = new SelectList(db.Branches, "Code", "Name");
            ViewBag.ProvinceId = new SelectList(db.Provinces, "Code", "Name");
            return View();
        }

        // POST: AdminRequests/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create2([Bind(Include = "Id,ContactEmail,TitleName,FirstName,LastName,PID,IsApproved,BranchId,ProvinceId")] AdminRequest adminRequest)
        {
            if (ModelState.IsValid)
            {
                db.AdminRequests.Add(adminRequest);
                db.SaveChanges();
                return RedirectToAction("Index", "Home");
            }

            ViewBag.BranchId = new SelectList(db.Branches, "Id", "Code", adminRequest.BranchId);
            ViewBag.ProvinceId = new SelectList(db.Provinces, "Id", "Code", adminRequest.ProvinceId);
            return View(adminRequest);
        }

        // POST: AdminRequests/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            AdminRequest adminRequest = db.AdminRequests.Find(id);
            db.AdminRequests.Remove(adminRequest);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
