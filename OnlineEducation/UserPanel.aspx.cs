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
    public partial class UserPanel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistartionConnectionString"].ConnectionString);
            if(Session["admin"] !=null)
            {

                lblUserName.Text = Session["admin"].ToString();
                lblUserName.Visible = false;
                conn.Open();
                string quary = "select  LNAME,FNAME,EMAIL,PASSWORD FROM REGISTRATION WHERE USERNAME='" + lblUserName.Text.ToString() + "'";
                SqlCommand cmd = new SqlCommand(quary, conn);

                SqlDataReader myReader = cmd.ExecuteReader();

                if (myReader.Read())
                {
                    lblUserName.Text = "<span style='color:#3D96B2; font-size:25px'>Потребителско име : </span>" + Session["admin"].ToString();
                    lblUserName.Visible = true;
                    lblLName.Text = "<span style='color:#3D96B2; font-size:25px'>Фамилия : </span>" + myReader["LNAME"].ToString();
                    lblFname.Text = "<span style='color:#3D96B2; font-size:25px'>Име : </span>" + myReader["FNAME"].ToString();
                    lblEmail.Text = "<span style='color:#3D96B2; font-size:25px'>E-mail : </span>" + myReader["EMAIL"].ToString();
                    lblPass.Text = "<span style='color:#3D96B2; font-size:25px'>Парола : </span>" + myReader["PASSWORD"].ToString();
                    lblUserName.Text = "<span style='color:#3D96B2; font-size:25px'>Потребителско име : </span>" + Session["admin"].ToString();
                    lblUserName.Visible = true;


                }
            }
            else if (Session["New"] != null)
            {
           
                lblUserName.Text =   Session["New"].ToString();
                lblUserName.Visible = false;
                conn.Open();
                string quary = "select  LNAME,FNAME,EMAIL,PASSWORD FROM REGISTRATION WHERE USERNAME='" + lblUserName.Text.ToString() + "'";
                SqlCommand cmd = new SqlCommand(quary, conn);

                SqlDataReader myReader = cmd.ExecuteReader();

                if (myReader.Read())
                {
                    lblUserName.Text = "<span style='color:#3D96B2; font-size:25px'>Потребителско име : </span>" + Session["New"].ToString();
                    lblUserName.Visible = true;
                    lblLName.Text = "<span style='color:#3D96B2; font-size:25px'>Фамилия : </span>" + myReader["LNAME"].ToString();
                    lblFname.Text = "<span style='color:#3D96B2; font-size:25px'>Име : </span>" + myReader["FNAME"].ToString();
                    lblEmail.Text = "<span style='color:#3D96B2; font-size:25px'>E-mail : </span>" + myReader["EMAIL"].ToString();
                    lblPass.Text = "<span style='color:#3D96B2; font-size:25px'>Парола : </span>" + myReader["PASSWORD"].ToString();
                    lblUserName.Text = "<span style='color:#3D96B2; font-size:25px'>Потребителско име : </span>" + Session["New"].ToString();
                    lblUserName.Visible = true;
                  

                }
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
            conn.Close();

        }
    }
}