using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using JDash;
using JDash.Models;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Data.Sql;
using System.Data.SqlTypes;


namespace ProjetVeille
{
    public partial class Client : System.Web.UI.Page
    {
      /*  SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["massyl"].ConnectionString);*/
        protected void Page_Load(object sender, EventArgs e)
        {
           /* con.Open();*/
            if (!Page.IsPostBack)
            {     listRepeater.DataSource = JDashManager.Provider.SearchDashboards().data;
                listRepeater.DataBind();
            }
          /*  SqlCommand cmd = new SqlCommand("SELECT title FROM Dashboard , Memberships Where Dashboard.createdBy=Memberships.UserId", con);
            cmd.ExecuteNonQuery();
            
            con.Close();*/


          /*  HyperLink12.Text = "sauvegarde reussi";*/


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