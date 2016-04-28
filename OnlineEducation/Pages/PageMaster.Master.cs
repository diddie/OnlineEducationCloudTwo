﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineEducation.Pages
{ 
    public partial class PageMaster : System.Web.UI.MasterPage
    {

       
        protected void Page_Load(object sender, EventArgs e)
        {
            hrlAdminPanel.Visible = false;
            if(Session["admin"] !=null)
            {
                hrlAdminPanel.Visible = true;
                hrlWelcome.Text = "Здравей ," + Session["admin"].ToString();
              
            }

            if(Session["New"]!=null)
            {
                hrlAdminPanel.Visible = false;
                hrlWelcome.Text = "Здравей ," + Session["New"].ToString();
            }
        }

        protected void btnLogOut_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("~/LogIn.aspx");
        }
    }
}