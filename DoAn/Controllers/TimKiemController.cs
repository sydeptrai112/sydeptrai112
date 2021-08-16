using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DoAn.Models;
using PagedList;
namespace DoAn.Controllers
{
    public class TimKiemController : Controller
    {
        // GET: TimKiem
        QUANLYBANHANGEntities2 db = new QUANLYBANHANGEntities2();
        [HttpGet]
        public ActionResult KQTimKiem(string sTuKhoa,int ?page)
        {
            if (Request.HttpMethod != "GET")
            {
                page = 1;
            }
            int PageSize = 6;
            int PageNumber = (page ?? 1);
            ViewBag.TuKhoa = sTuKhoa;

            var lstSP = db.SanPhams.Where(n => n.TenSP.Contains(sTuKhoa));

            return View(lstSP.OrderBy(n=> n.TenSP).ToPagedList(PageNumber,PageSize));
        }

        [HttpPost]
        public ActionResult LayTuKhoaTimKiem(string sTuKhoa)
        {
            /*if (Request.HttpMethod != "GET")
            {
                page = 1;
            }
            int PageSize = 6;
            int PageNumber = (page ?? 1);
            ViewBag.TuKhoa = sTuKhoa;

            var lstSP = db.SanPhams.Where(n => n.TenSP.Contains(sTuKhoa));*/
            // Gọi về  hàm get tìm kiếm
            return RedirectToAction("KQTimKiem",new { @sTuKhoa = sTuKhoa });
        }
    }
}