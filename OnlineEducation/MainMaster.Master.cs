using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineEducation
{
    public partial class MainMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            hrlAdminPanel.Visible = false;
             SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistartionConnectionString"].ConnectionString);
         
            if(Session["admin"] != null)
            {
                hrlAdminPanel.Visible = true;
                hrlWelcome.Text = "Здравей, " + Session["admin"].ToString();
            }
            else  if(Session["New"] !=null )
            {
                hrlAdminPanel.Visible = false;
                hrlWelcome.Text = "Здравей, " + Session["New"].ToString();
       
            }

            else { Response.Redirect("LogIn.aspx"); }

        
        }

     
        protected void btnName_Click(object sender, EventArgs e)
        {
            
             

        }

        protected void btnLogOut_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("LogIn.aspx");
        }
    }
}