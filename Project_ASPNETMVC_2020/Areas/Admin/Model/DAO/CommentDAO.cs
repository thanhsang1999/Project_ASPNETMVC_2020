using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Project_ASPNETMVC_2020.Model.EF;

namespace Project_ASPNETMVC_2020.Areas.Admin.Model.DAO
{
    public static class CommentDAO
    {
        public static List<binhluan> LoadListComment()
        {
            DBModel db = new DBModel();
            var result = db.binhluans.OrderBy(x => x.ID_BINHLUAN);
            return result.ToList();
        }
        public static bool DeleteCommentByID(int idComment)
        {
            DBModel db = new DBModel();
            var tmp = db.binhluans.Where(x => x.ID_BINHLUAN.Equals(idComment)).FirstOrDefault();
            if (tmp != null)
            {
                db.binhluans.Attach(tmp);
                db.binhluans.Remove(tmp);
                db.SaveChanges();
                return true;
            }
            else
            {
                return false;
            }
        }
    }
}