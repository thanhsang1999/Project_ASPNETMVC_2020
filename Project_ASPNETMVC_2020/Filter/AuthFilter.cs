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
        public bool roleIsRequired { get; set; }
        //public override void OnActionExecuting(ActionExecutingContext Context)
        //{
        //    UserViewModel user = Context.HttpContext.Session["User"] as UserViewModel;
        //    string roleOfUser = null;
        //    if (user != null)
        //    {
        //        roleOfUser = user.LEVEL;
        //    }
        //    if (Role != null)
        //    {
        //        if (Role != roleOfUser)
        //        {
        //            string iduser = null;
        //            if (user != null)
        //            {
        //                iduser = user.ID_ACCOUNT;
        //            }
        //            string ipaddress = HttpContext.Current.Request.UserHostAddress;
        //            string controller = Context.ActionDescriptor.ControllerDescriptor.ControllerName;
        //            string action = Context.ActionDescriptor.ActionName;
        //            string level = null;
        //            string message = "OnActionExecuting:  ";
        //            if (Role == LevelAuth.Admin)
        //            {
        //                level = LevelLog.WARNING;
        //                message += "Some one try to access in Page Admin";
        //            }
        //            if (Role == LevelAuth.User)
        //            {
        //                level = LevelLog.ALERT;
        //                message += "User not login before go to this page";
        //            }

        //            new LogDAO().addLog(controller, action, iduser, ipaddress, level, message);
        //            Context.Result = new RedirectToRouteResult(new RouteValueDictionary(new { controller = "Home", action = "Index" }));

        //        }
        //    }
        //}
        public override void OnActionExecuting(ActionExecutingContext Context)
        {
            User user = Context.HttpContext.Session["User"] as User;
            string roleOfUser = null;
            if (user != null)
            {
                roleOfUser = user.LEVEL;
            }

            if (roleIsRequired == true && user != null)
            {

                DBModel dBModel = new DBModel();
                string controller = Context.ActionDescriptor.ControllerDescriptor.ControllerName;
                string action = Context.ActionDescriptor.ActionName;
                var check = dBModel.authentications.Where(x => x.ACTION.Equals(action) && x.CONTROLLER.Equals(controller) && x.ROLE.ToString().Equals(roleOfUser)).SingleOrDefault();
                if (check == null)
                {
                    string iduser = user.ID_ACCOUNT;
                    string ipaddress = HttpContext.Current.Request.UserHostAddress;
                    string level = null;
                    string message = "OnActionExecuting:  ";
                    level = LevelLog.ALERT;
                    message += "Someone try to access this page without permission";
                    new LogDAO().addLog(controller, action, iduser, ipaddress, level, message);
                    Context.Result = new RedirectToRouteResult(new RouteValueDictionary(new { controller = "Home", action = "Index" }));
                }
            }
            else if (roleIsRequired == true && user == null)
            {
                string controller = Context.ActionDescriptor.ControllerDescriptor.ControllerName;
                string action = Context.ActionDescriptor.ActionName;
                string ipaddress = HttpContext.Current.Request.UserHostAddress;
                string level = null;
                string message = "OnActionExecuting:  ";
                level = LevelLog.ALERT;
                message += "Someone try to access this page without permission";
                new LogDAO().addLog(controller, action, null, ipaddress, level, message);
                Context.Result = new RedirectToRouteResult(new RouteValueDictionary(new { controller = "Home", action = "Index" }));
            }




        }

    }
}