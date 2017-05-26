using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Model.EF;
using btlonweb.Models.DTO;
namespace btlonweb.Models.DAO
{
    public class CompanyDAO
    {
        OnlineDbContext db = null;
        public CompanyDAO()
        {
            db = new OnlineDbContext();
        }
        public IQueryable<CompanyDTO> getAllCompany()
        {
            var rs = from comp in db.Companies
                     join pro in db.Products on comp.ID equals pro.CompanyID
                     group comp by new { comp.ID, comp.Name } into OD
                     orderby OD.Key
                     select new CompanyDTO
                     {
                         ID = OD.Key.ID,
                         Name = OD.Key.Name,
                         Quantity = OD.Count()
                     };
            return rs;
        }
    }
}
