﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineEducation.admin
{
    public partial class LectureTabke : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void gdLecture_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridViewRow row = gdLecture.Rows[e.NewEditIndex];
            int rowId = Convert.ToInt32(row.Cells[1].Text);
            Response.Redirect("~/admin/LectureManage.aspx?id=" + rowId);
        }

    

     
    }
}