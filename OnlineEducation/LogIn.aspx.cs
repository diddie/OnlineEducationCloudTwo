using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WMPNSSCI;

namespace OnlineEducation
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected string nameAdmin = "admin";
        protected string passwordAdmin = "onlineEducationADMIN";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.Cookies["UserName"] != null && Request.Cookies["Password"] != null)
                {
                    txtUserNameLog.Text = Request.Cookies["UserName"].Value;
                    txtPassLog.Attributes["value"] = Request.Cookies["Password"].Value;
                }
            }
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            if (ckBoxLog.Checked)
            {
                Response.Cookies["UserName"].Expires = DateTime.Now.AddDays(30);
                Response.Cookies["Password"].Expires = DateTime.Now.AddDays(30);
            }
            else
            {
                Response.Cookies["UserName"].Expires = DateTime.Now.AddDays(-5);
                Response.Cookies["Password"].Expires = DateTime.Now.AddDays(-5);

            }
            Response.Cookies["UserName"].Value = txtUserNameLog.Text.Trim();
            Response.Cookies["Password"].Value = txtPassLog.Text.Trim();
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistartionConnectionString"].ConnectionString);
            conn.Open();

            string checkUserName = "select count(*) from  REGISTRATION where USERNAME='" + txtUserNameLog.Text + "'";
            SqlCommand con = new SqlCommand(checkUserName, conn);
            int temp = Convert.ToInt32(con.ExecuteScalar().ToString());
            conn.Close();
            
           
        
            if (temp == 1)
            {
                conn.Open();
                string checkPasswordQuery = "select PASSWORD from REGISTRATION where USERNAME='" + txtUserNameLog.Text + "'";
                SqlCommand passCom = new SqlCommand(checkPasswordQuery, conn);
                string password = passCom.ExecuteScalar().ToString().Replace(" ", "");

                if (txtUserNameLog.Text == nameAdmin && txtPassLog.Text == passwordAdmin )
                {
                    Session["admin"] = txtUserNameLog.Text;
                    Response.Redirect("~/admin/Admin.aspx");
                } else 
                  if (password == txtPassLog.Text)
                {

                    Session["New"] = txtUserNameLog.Text;
                    Response.Write("<h2>Паролата е коректна!</h2>");
                    Response.Redirect("Home.aspx");
                }
                else
                {

                    Response.Write("<h2>Паролата не е коректна!</h2>");
                }
            }
            else
            {
                Response.Write("<h2>Паролата или потребителското име са некоректни! </p>");
            }

        }
    }
}