using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using JDash;
using JDash.Models;

namespace ProjetVeille
{
    public partial class DisplayDashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack && !string.IsNullOrEmpty(Request.QueryString["id"]))
            {
                myDashboard.DashboardId = Request.QueryString["id"];
                myDashboard.DataBind();
                modulesList.DataSource = JDashManager.Provider.SearchDashletModules().data;
                modulesList.DataBind();
            }
        }


        protected void modulesList_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            var moduleId = e.CommandArgument.ToString();
            var module = JDashManager.Provider.GetDashletModule(moduleId);
            var newDashlet = new DashletModel(module);
            myDashboard.CreateDashlet(newDashlet);
        }
    }
}