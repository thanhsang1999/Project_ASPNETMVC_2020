using Project_ASPNETMVC_2020.Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Project_ASPNETMVC_2020.Areas.Admin.Model.DAO
{
    public static class SliderDAO
    {
        public static List<slider> LoadListSlider()
        {
            DBModel db = new DBModel();
            var result = db.sliders;
            return result.ToList();
        }
    }
}