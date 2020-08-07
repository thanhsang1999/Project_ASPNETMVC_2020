﻿using Project_ASPNETMVC_2020.Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Project_ASPNETMVC_2020.Model.DAO
{
    public class RecentlyViewDAO
    {
        public void addRecentlyView(string iduser,string idproduct)
        {
            DBModel dBModel = new DBModel();
            recently_viewed rv = new recently_viewed();
            if(checkRecentlyView(iduser, idproduct) == true)
            {
                rv.ID_ACCOUNT = iduser;
                rv.ID_PRODUCT = idproduct;
                rv.DATE_VIEW = DateTime.Now;
                dBModel.recently_viewed.Add(rv);
                dBModel.SaveChanges();
            }
         
        }
        public bool checkRecentlyView(string iduser, string idproduct)
        {
            DBModel dBModel = new DBModel();
           var check= dBModel.recently_viewed.Where(x => x.ID_ACCOUNT == iduser && x.ID_PRODUCT == idproduct).SingleOrDefault();
            if (check == null)
            {
                return true;
            }
            else
            {
                return false;
            }
           
        }
        public void limitRecentlyView(string iduser)
        {
            DBModel dBModel = new DBModel();
            recently_viewed rv= null;
            List<recently_viewed> listRV=dBModel.recently_viewed.Where(x => x.ID_ACCOUNT==iduser).OrderByDescending(x => x.DATE_VIEW).ToList();
            if (listRV.Count == 11)
            {
                 rv= listRV.ElementAt(listRV.Count-1);
            }
            if (rv != null) {
                dBModel.recently_viewed.Attach(rv);
                dBModel.recently_viewed.Remove(rv);
                dBModel.SaveChanges();
            }
          
        }
        public List<recently_viewed> getRvByIdUser(string iduser)
        {
            DBModel dBModel = new DBModel();
            List<recently_viewed> listRV = dBModel.recently_viewed.Where(x => x.ID_ACCOUNT == iduser).OrderByDescending(x => x.DATE_VIEW).Take(10).ToList();
            return listRV;
        }
    }
}