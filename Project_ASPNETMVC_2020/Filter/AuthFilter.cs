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
            var active = 0;

            if (user != null)
            {
                 active = Convert.ToInt32(user.ACTIVE);
                roleOfUser = user.LEVEL;
            }
            if (roleIsRequired != null)
            {
               
                var realrolerequire = Convert.ToInt32(roleIsRequired);
                var roleuser = Convert.ToInt32(roleOfUser);
                if (realrolerequire > roleuser || active != 1)
                {

                    string iduser = null;
                    if (user != null)
                    {
                        iduser = user.ID_ACCOUNT;
                    }
                    var area = Context.RouteData.DataTokens["area"];
                    string ipaddress = Context.HttpContext.Request.UserHostAddress;
                    string controller = Context.ActionDescriptor.ControllerDescriptor.ControllerName;
                    if (area != null)
                    {
                        controller = area + "/" + controller;
                    }
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