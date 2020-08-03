using System.Web;
using System.Web.Mvc;

namespace Project_ASPNETMVC_2020
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
        }
    }
}
