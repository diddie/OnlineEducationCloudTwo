using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineEducation.admin
{
    public partial class LectureTypeTable : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridViewRow rows = GridView1.Rows[e.NewEditIndex];
            int rowId = Convert.ToInt32(rows.Cells[1].Text);
            Response.Redirect("~/admin/LectureTypeManagment.aspx?id=" + rowId);
        }
    }
}