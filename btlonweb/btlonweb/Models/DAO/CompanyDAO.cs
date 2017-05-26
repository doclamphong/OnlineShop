using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Model.EF;
namespace btlonweb.Models.DAO
{
    public class CompanyDAO
    {
        OnlineDbContext db = null;
        public CompanyDAO()
        {
            db = new OnlineDbContext();
        }
        
    }
}