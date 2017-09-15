using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjetVeille
{
    public partial class Ajout_de_flux : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGO_Click(object sender, EventArgs e)
        {
            if (txtURL.Text != string.Empty)
            {
                this.XmlDataSource1.DataFile = txtURL.Text;
                this.DataList1.DataSource = this.XmlDataSource1;
                this.DataList1.DataBind();
            }
        }
    }
}