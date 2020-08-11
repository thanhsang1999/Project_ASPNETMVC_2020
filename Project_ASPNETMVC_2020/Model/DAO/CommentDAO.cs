using Project_ASPNETMVC_2020.Model.EF;
using System;
using System.Collections.Generic;
using System.Drawing.Drawing2D;
using System.Linq;
using System.Web;

namespace Project_ASPNETMVC_2020.Model.DAO
{
    public class CommentDAO
    {

        public void addComment(string idsp, string name, string content)
        {
            DBModel dBModel = new DBModel();
            binhluan bl = new binhluan();
          
            bl.ID_SANPHAM = idsp;
            bl.NOIDUNG = content;
            bl.TEN = name;
            dBModel.binhluans.Add(bl);
            dBModel.SaveChanges();

        }
      
        public bool checkNullContent(string content)
        {
            if (String.IsNullOrEmpty(content) || String.IsNullOrWhiteSpace(content) || String.Empty.Equals(content) || content.Equals(""))
            {
                return false;
            }
            else
            {
                return true;
            }

        }
        public List<binhluan> getListBLForProduct(string idsp)
        {
            DBModel dBModel = new DBModel();
            var listBl = dBModel.binhluans.Where(x => x.ID_SANPHAM == idsp).OrderByDescending(x=>x.ID_BINHLUAN).ToList();
            if (listBl == null)
            {
                listBl = new List<binhluan>();
            }
            return listBl;
        }

    }
}