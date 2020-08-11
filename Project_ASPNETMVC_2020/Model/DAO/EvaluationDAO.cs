using Project_ASPNETMVC_2020.Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Project_ASPNETMVC_2020.Model.DAO
{
    public class EvaluationDAO
    {
        public void addReviewDAO(string iduser,string idproduct,string title,int eval,string content)
        {
            DBModel dBModel = new DBModel();
            danhgia neweval = new danhgia();
            
            neweval.ID_SANPHAM = idproduct;
            neweval.ID_USER = iduser;
            neweval.TEN_USER = new UserDAO().getUserById(iduser).HO_TEN;
            neweval.NOIDUNG = content;
            neweval.SAO = eval.ToString();
            neweval.TIEUDE = title;
            dBModel.danhgias.Add(neweval);
            dBModel.SaveChanges();
        }
        public bool checkValue(int value)
        {
            if(value>0 && value <= 5)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
       
        public List<danhgia>  getListEvalForProduct(string idproduct)
        {
            DBModel dBModel = new DBModel();
            var listEval = dBModel.danhgias.Where(x => x.ID_SANPHAM == idproduct).OrderByDescending(x=>x.ID_DANHGIA).ToList();

            if (listEval == null)
            {
                listEval = new List<danhgia>();

            }
            return listEval;
        }
            
    }
}