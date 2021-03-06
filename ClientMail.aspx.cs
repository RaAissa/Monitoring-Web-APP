﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjetVeille
{
    public partial class ClientMail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            if (Page.IsPostBack == false)
            {
                // Enregistre l url référente pour la fonction de retour
               ViewState["UrlReferent"] = Request.UrlReferrer.ToString();
            }
        }
        protected void SendMail()
        {
            // Gmail Address from where you send the mail
            var fromAddress = "gheroufella.massyl@gmail.com";
            // any address where the email will be sending
            var toAddress = HisEmail.Text.ToString();
            //Password of your gmail address
            const string fromPassword = "aqzsed7485";
            // Passing the values and make a email formate to display
            string subject = HisEmail.Text.ToString() + " a partagé un lien avec vous";
            string body = Comments.Text + "\n";
            body += Request.QueryString["field1"];


            // smtp settings
            var smtp = new System.Net.Mail.SmtpClient();
            {
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.EnableSsl = true;
                smtp.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
                smtp.Credentials = new NetworkCredential(fromAddress, fromPassword);
                smtp.Timeout = 20000;
            }
            // Passing values to smtp object
            smtp.Send(fromAddress, toAddress, subject, body);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                //here on button click what will done 
                SendMail();
                DisplayMessage.Text = "Your Comments after sending the mail";
                DisplayMessage.Visible = true;
                YourEmail.Text = "";
                HisEmail.Text = "";
                Comments.Text = "";
                Response.Redirect((String)ViewState["UrlReferent"]);
            }
            catch (Exception) { }
        }
    }
}