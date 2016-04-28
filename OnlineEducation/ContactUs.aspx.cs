using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Net.Mail;

namespace OnlineEducation
{
    public partial class ContactUs : System.Web.UI.Page
    {
       

        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistartionConnectionString"].ConnectionString);
               if(Session["admin"] != null)
               {
                   Response.Redirect("~/admin/Admin.aspx");
               }
               else    if (Session["New"] != null)
            {
                lblWelcome.Text = "Здравей, " + Session["New"].ToString();
                txtNameCont.Text += Session["New"].ToString();
                conn.Open();
                string quary = "select  EMAIL FROM REGISTRATION WHERE USERNAME='" + txtNameCont.Text + "'";
                SqlCommand cmd = new SqlCommand(quary, conn);

                SqlDataReader myReader = cmd.ExecuteReader();
                if (myReader.Read())
                {
                    txtEmailCont.Text = myReader["EMAIL"].ToString();

                }  
            }
            else
            {
                Response.Redirect("LogIn.aspx");
            }
            conn.Close();
        }

        protected void txtNameCont_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            try
            {
                MailMessage mailMessage = new MailMessage();
                mailMessage.From = new MailAddress("noobiesbg@gmail.com");
                mailMessage.To.Add("noobiesbg@gmail.com");
                mailMessage.Subject = txtSubjCont.Text;

                mailMessage.Body = "</br> <b> Name : </b>" + txtNameCont.Text
                                  + "</br> <b>Email :  </b>" + txtEmailCont.Text
                                  + "<br/><b>Message : </b>" + txtMessageCont.Text;

                mailMessage.IsBodyHtml = true;

                SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587);
                smtpClient.EnableSsl = true;
                smtpClient.Credentials = new System.Net.NetworkCredential("noobiesbg@gmail.com", "94950409120243459843");
                smtpClient.Send(mailMessage);
                lblSend.Text = "Благадарим Ви ,че се свързахте с наc ! ";
                txtNameCont.Enabled = false;
                txtEmailCont.Enabled = false;
                txtSubjCont.Enabled = false;
                txtMessageCont.Enabled = false;
                btnSend.Enabled = false;
            } catch(Exception )
            {
                lblSend.Text = "You fail";
            }
        }

      
        protected void btnLogOut_Click(object sender, EventArgs e)
        {
     
            Session.Abandon();
            Response.Redirect("LogIn.aspx");
        }
    }
}