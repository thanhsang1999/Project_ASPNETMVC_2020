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
        public static string GenerateIDSlider()
        {
            DBModel db = new DBModel();
            var tmp = db.sliders;
            int tmpInt = 0;
            foreach (slider item in tmp)
            {
                int intCurrent = int.Parse(item.ID_SLIDER.Substring(2));
                if (tmpInt <= intCurrent)
                {
                    tmpInt = intCurrent;
                }

            }
            return "SL" + (tmpInt + 1);
        }
        public static int GenerateNumberSlider()
        {
            DBModel db = new DBModel();
            var tmp = db.sliders;
            int tmpInt = 0;
            foreach (slider item in tmp)
            {
                int intCurrent = (int) item.NUMBER;
                if (tmpInt <= intCurrent)
                {
                    tmpInt = intCurrent;
                }

            }
            return (tmpInt + 1);
        }
        public static slider LoadSlider(string idSlider)
        {
            DBModel db = new DBModel();
            var result = db.sliders.Where(x=>x.ID_SLIDER.Equals(idSlider)).FirstOrDefault();
            return result;
        }
    }
}