using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace OnlineEducation
{
    public partial class Registration : System.Web.UI.Page
    {
       
        SqlConnection conn;
        SqlCommand cmd;
        SqlDataReader rd;
     
        bool flag = false;
        public Registration()
        {
            conn = new SqlConnection();
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["RegistartionConnectionString"].ToString();
            cmd = new SqlCommand();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
          
            hlLogIn.Visible = false;
        

         

        }

        protected void btnCreate_Click(object sender, EventArgs e)
        {

            conn.Open();
            cmd.CommandText = "select * from REGISTRATION";
            cmd.Connection = conn;
            rd = cmd.ExecuteReader();
            while(rd.Read())
            {
                if(rd["USERNAME"].ToString() ==txtUserReg.Text || rd["EMAIL"].ToString() == txtEmailReg.Text)
                {
                    flag = true;
                    break;
                }
            }
            conn.Close();
            if(flag==true)
            {
                lblExist.Visible = true;
                lblExist.Text = "Потребителското име или E-mail са вече заети!";
                lblExist.ForeColor = System.Drawing.Color.Red;
               lblExist.Font.Size = 20;
           
            }
            else
            {
                lblExist.Visible = false;
                Insert();
            }
           

        }
        public void Insert()
        {
            conn.Open();
            cmd.CommandText = "Insert into REGISTRATION(USERNAME,PASSWORD,EMAIL,FNAME,LNAME) values(@UserName , @password ,@email,@Fname,@Lname)";
            cmd.Connection = conn;
            cmd.Parameters.AddWithValue("@UserName", txtUserReg.Text);

            cmd.Parameters.AddWithValue("@password", txtPassReg.Text);
            cmd.Parameters.AddWithValue("@email", txtEmailReg.Text);
            cmd.Parameters.AddWithValue("@Fname", txtFNameReg.Text);
            cmd.Parameters.AddWithValue("@Lname", txtLNameReg.Text);
            int a = cmd.ExecuteNonQuery();
            if(a>0)
            {
                lblSucces.Text = "Успешо се регистрирахте";
                lblSucces.ForeColor = System.Drawing.Color.LightSeaGreen;
                lblSucces.Font.Size = 20;
                hlLogIn.Visible = true ;
             
            }
            else
            {
                lblSucces.Text = "Съжалявам!";
            }
        
        }

     

        protected void CustomValidator1_ServerValidate1(object source, ServerValidateEventArgs args)
        {
            
        }
    }
}