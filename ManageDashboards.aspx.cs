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
    public partial class ManageDashboards : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                listRepeater.DataSource = JDashManager.Provider.SearchDashboards().data;
                listRepeater.DataBind();
            }
        }

        protected void createBtn_Click(object sender, EventArgs e)
        {
            var newDashboard = new DashboardModel()
            {
                title = dashTitle.Text
            };
            JDashManager.Provider.CreateDashboard(newDashboard);
            listRepeater.DataSource = JDashManager.Provider.SearchDashboards().data;
            listRepeater.DataBind();
        }
    }
}