using Project_ASPNETMVC_2020.ClassToConfig;
using Project_ASPNETMVC_2020.Model.DAO;
using Project_ASPNETMVC_2020.Model.EF;
using Project_ASPNETMVC_2020.Model.ModelOfSession;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Project_ASPNETMVC_2020.Filter
{
    public class LogFilter : ActionFilterAttribute
    {
        public string levellog { get; set; }
        public string messagelog { get; set; }

        public override void OnActionExecuting(ActionExecutingContext Context)
        {
            HttpRequestBase request = Context.HttpContext.Request;
            string iduser = null;
            UserViewModel user = Context.HttpContext.Session["User"] as UserViewModel;
            if (user != null)
            {
                iduser = user.ID_ACCOUNT;
            }
            string ipaddress = Context.HttpContext.Request.UserHostAddress;
            string controller = Context.ActionDescriptor.ControllerDescriptor.ControllerName;
            string action = Context.ActionDescriptor.ActionName;
            string level = LevelLog.INFO;
            string message = "OnActionExecuting:  ";
            if (levellog != null)
            {
                message += messagelog;
            }
            else
            {
                message += "OK";
            }
             
            if (levellog != null)
            {
                level = LevelLog.INFO;
            }

            new LogDAO().addLog(controller, action, iduser, ipaddress, level, message);

        }
        public override void OnActionExecuted(ActionExecutedContext Context)
        {
            HttpRequestBase request = Context.HttpContext.Request;

            string iduser = null;
            UserViewModel user = Context.HttpContext.Session["User"] as UserViewModel;
            if (user != null)
            {
                iduser = user.ID_ACCOUNT;
            }
            string ipaddress = Context.HttpContext.Request.UserHostAddress;
            string controller = Context.ActionDescriptor.ControllerDescriptor.ControllerName;
            string action = Context.ActionDescriptor.ActionName;
            string level = LevelLog.INFO;
            string message = "OnActionExecuted:  ";
        
            if (Context.Controller.ViewBag.MessageLog != null)
            {
                message+= Context.Controller.ViewBag.MessageLog;
            }
            else
            {
                message += "OK";
            }
            if (Context.Controller.ViewBag.LevelLog != null)
            {
                level = Context.Controller.ViewBag.LevelLog;
            }

            new LogDAO().addLog(controller, action, iduser, ipaddress, level, message);
        }


    }
}