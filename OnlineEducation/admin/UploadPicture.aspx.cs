using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineEducation.admin
{
    public partial class web : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
            if (FileUpload1.HasFile)
            {
                try
                {
                    string file = Path.GetFileName(FileUpload1.FileName);
                    FileUpload1.SaveAs(Server.MapPath("~/ImagesForLectures/") + file);
                    lblSize.Text = "Размер : "+FileUpload1.PostedFile.ContentLength.ToString() + " bytes.";
                    lblName.Text ="Име : " +  FileUpload1.FileName;
                }
                catch (Exception)
                {
                    lblName.Text = e.ToString();
                }
            }
         
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
    
        }
    }
}