using Project_ASPNETMVC_2020.ClassToConfig;
using Project_ASPNETMVC_2020.Model.DAO;
using Project_ASPNETMVC_2020.Model.EF;
using Project_ASPNETMVC_2020.Model.ModelOfSession;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace Project_ASPNETMVC_2020.Filter
{

    public class AuthFilter : ActionFilterAttribute
    {
        public string roleIsRequired { get; set; }
        public override void OnActionExecuting(ActionExecutingContext Context)
        {
            User user = Context.HttpContext.Session["User"] as User;
            string roleOfUser = null;
            if (user != null)
            {
                roleOfUser = user.LEVEL;
            }
            if (roleIsRequired != null)
            {
                var realrolerequire = Convert.ToInt32(roleIsRequired);
                var roleuser = Convert.ToInt32(roleOfUser);
                if (realrolerequire > roleuser)
                {

                    string iduser = null;
                    if (user != null)
                    {
                        iduser = user.ID_ACCOUNT;
                    }
                    string ipaddress = HttpContext.Current.Request.UserHostAddress;
                    string controller = Context.ActionDescriptor.ControllerDescriptor.ControllerName;
                    string action = Context.ActionDescriptor.ActionName;
                    string level = null;
                    string message = "OnActionExecuting:  ";
                    if (roleIsRequired .Equals( LevelAuth.Admin))
                    {
                        level = LevelLog.WARNING;
                        message += "Some one try to access in Page Admin";
                    }
                    if (roleIsRequired .Equals (LevelAuth.User))
                    {
                        level = LevelLog.ALERT;
                        message += "User not login before go to this page";
                    }

                    new LogDAO().addLog(controller, action, iduser, ipaddress, level, message);
                    Context.Result = new RedirectToRouteResult(new RouteValueDictionary(new { controller = "Home", action = "Index", area = "" }));

                }
            }
        }


    }
}