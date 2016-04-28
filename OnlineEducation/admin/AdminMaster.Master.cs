using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineEducation.admin
{
    public partial class AdminMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistartionConnectionString"].ConnectionString);
            if (Session["admin"] != null)
            {
                hrlWelcome.Text = "Здравей  " + Session["admin"].ToString();
            }

            else { Response.Redirect("~/ErrorPages/Http401ErrorUnauthorized.aspx.aspx"); }
        }
        protected void btnLogOut_Click(object sender, EventArgs e)
        {
           
            Session.Abandon();
            Response.Redirect("~/LogIn.aspx");
        }
    }
}