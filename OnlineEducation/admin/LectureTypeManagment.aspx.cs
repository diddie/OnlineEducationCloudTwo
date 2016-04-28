using OnlineEducation.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineEducation.admin
{
    public partial class LectureTypeManagment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (!String.IsNullOrWhiteSpace(Request.QueryString["id"]))
                {
                    int id = Convert.ToInt32(Request.QueryString["id"]);
                    FillField(id);
                }
            }
        }
        private void FillField(int id)
        {
            LectureTypeModel lectureTypeModel = new LectureTypeModel();
            LectureType lectureType = lectureTypeModel.getLectureType(id);
            txtName.Text = lectureType.Name;

        }


        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            LectureTypeModel model = new LectureTypeModel();
            LectureType lt = createLectureType();
            if (!String.IsNullOrWhiteSpace(Request.QueryString["id"]))
            {
                int id = Convert.ToInt32(Request.QueryString["id"]);
                lblResult.Text = model.UpdateLectureTypes(id, lt);
            }
            else
            {
                lblResult.Text = model.InsertLectureTypes(lt);
            }

        }
        private LectureType createLectureType()
        {
            LectureType lt = new LectureType();
            lt.Name = txtName.Text;
            return lt;
        }
    }
}