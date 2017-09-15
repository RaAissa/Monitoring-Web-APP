﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using JDash;


namespace JDash.WebForms.Demo.JDash.Dashlets.GoogleMaps
{
    public partial class Edit : System.Web.UI.UserControl
    {
        DashletContext context = null;

        public override void DataBind()
        {
            base.DataBind();
        }

        [JEventHandler(JEvent.InitContext)]
        public void InitContext(object sender, JEventArgs args)
        {
            this.context = args.Event.Parameters.Get<DashletContext>("context");
        }

        [JEventHandler(JEvent.ValidateDashletEditor)]
        public void ValidateDashletEditor(object sender, JEventArgs args)
        {
            context.SaveModel();
            context.DashletControl.DataBind();
        }
    }
}