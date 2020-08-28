    using Microsoft.Ajax.Utilities;
using Project_ASPNETMVC_2020.Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Project_ASPNETMVC_2020.Model.DAO
{
    public class LikeDAO
    {
        public void addLike(string iduser, string idproduct)
        {
            DBModel dBModel = new DBModel();
            yeuthich like = new yeuthich();
            like.ID_YEUTHICH = generateIdFofLike();
            like.ID_ACCOUNT = iduser;
            like.ID_PRODUCT = idproduct;
            dBModel.yeuthiches.Add(like);
            dBModel.SaveChanges();
        }
        public void deleteLike(string iduser, string idproduct)
        {
            DBModel dBModel = new DBModel();
            var todelete = dBModel.yeuthiches.Where(x => x.ID_ACCOUNT == iduser && x.ID_PRODUCT == idproduct).FirstOrDefault();
            dBModel.yeuthiches.Remove(todelete);
            dBModel.SaveChanges();
        }
        public List<yeuthich> getListLikeForUser(string iduser)
        {
            DBModel dBModel = new DBModel();
            var list = dBModel.yeuthiches.Where(x => x.ID_ACCOUNT == iduser).ToList();
            if (list == null)
            {
                list = new List<yeuthich>();
            }
            return list;
        }
        public List<product> getListProductUserHasLike(string iduser)
        {
            ProductDAO dao = new ProductDAO();
            List<product> list = new List<product>();
            var listLike = getListLikeForUser(iduser);
            foreach (yeuthich like in listLike)
            {
                list.Add(dao.findProductById(like.ID_PRODUCT));
            }
            return list;

        }
        public int getNumberUserLike(string iduser)
        {
            DBModel dBModel = new DBModel();
            var check = dBModel.yeuthiches.Where(x => iduser == x.ID_ACCOUNT).Count();
            return check;

        }

        public bool checkIsProduct(string idproduct)
        {
            DBModel dBModel = new DBModel();
            var check = dBModel.products.Where(x => x.ID_PRODUCT == idproduct).FirstOrDefault();
            if (check == null)
            {
                return false;
            }
            else
            {
                return true;
            }
        }
        public string generateIdFofLike()
        {
            DBModel db = new DBModel();
            var tmp = db.yeuthiches;
            int tmpInt = 0;
            foreach (yeuthich item in tmp)
            {
                int intCurrent = int.Parse(item.ID_YEUTHICH.Substring(2));
                if (tmpInt <= intCurrent)
                {
                    tmpInt = intCurrent;
                }

            }
            return "YT" + (tmpInt + 1);
        }
        public bool isUserHasLike(string idproduct, string iduser)
        {
            DBModel db = new DBModel();
            var check = db.yeuthiches.Where(x => x.ID_PRODUCT == idproduct && x.ID_ACCOUNT == iduser).FirstOrDefault();
            if (check == null)
            {
                return false;
            }
            else
            {
                return true;
            }
        }
    }
}