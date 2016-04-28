using OnlineEducation.Models;
using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineEducation.admin
{
    public partial class LectureManage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.MaintainScrollPositionOnPostBack = true;
            if (!IsPostBack)
            {

                getImage();
                getPicturesForLecture();
              
                if (!String.IsNullOrWhiteSpace(Request.QueryString["id"]))
                {
                    int id = Convert.ToInt32(Request.QueryString["id"]);
                    fillPage(id);
                 

                    
                }
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            LectureModel lectureModel = new LectureModel();
            Lecture lecture = CreateLecture();
            if (!String.IsNullOrWhiteSpace(Request.QueryString["id"]))
            {
                int id = Convert.ToInt32(Request.QueryString["id"]);
                lblResult.Text = lectureModel.UpdateLecture(id, lecture);
                lblResult.Text = lectureModel.UpdateLecture(id, lecture);
            }
            else
            {
                lblResult.Text = lectureModel.InsertLecture(lecture);
            }
        }
        private void fillPage(int id)
        {
            LectureModel lectureModel = new LectureModel();
            Lecture lecture = lectureModel.getLecture(id);
            
            txtDescription.Text = lecture.Description;
            
            txtName.Text = lecture.Name;
            ddlPicture.SelectedValue = lecture.Image;
      
            ddlPic1.SelectedValue = lecture.Image_One;
            ddlPic2.SelectedValue = lecture.Image_Two;
            ddlPic3.SelectedValue = lecture.Image_Three;
            ddlPic4.SelectedValue = lecture.Image_Four;
            ddlPic5.SelectedValue = lecture.Image_Five;
            ddlPic6.SelectedValue = lecture.Image_Six;
           
            txtVideo.Text = lecture.Video;
            ddlLectureType.SelectedValue = lecture.Type_ID.ToString();

        }

        private void getImage()
        {
            try
            {
                string[] images = Directory.GetFiles(Server.MapPath("~/images"));
                ArrayList imageList = new ArrayList();
                foreach (string image in images)
                {
                    string imageName = image.Substring(image.LastIndexOf(@"\", StringComparison.Ordinal) + 1);
                    imageList.Add(imageName);
                }
                ddlPicture.DataSource = imageList;
                ddlPicture.AppendDataBoundItems = true;
                ddlPicture.DataBind();
            }
            catch (Exception e)
            {
                lblResult.Text = e.ToString();
            }
        }
        private void getPicturesForLecture()
        {
            try
            {
                string[] pictures = Directory.GetFiles(Server.MapPath("~/ImagesForLectures"));
                ArrayList pictureList = new ArrayList();
                foreach (string picture in pictures)
                {
                    string pictureName = picture.Substring(picture.LastIndexOf(@"\", StringComparison.Ordinal) + 1);
                    pictureList.Add(pictureName);
                }

               
                ddlPic1.DataSource = pictureList;
               
                ddlPic2.DataSource = pictureList;
               
                ddlPic3.DataSource = pictureList;
            
                ddlPic4.DataSource = pictureList;
                
                ddlPic5.DataSource = pictureList;
              
                ddlPic6.DataSource = pictureList;
                ddlPic1.AppendDataBoundItems = true;
                ddlPic2.AppendDataBoundItems = true;
                ddlPic3.AppendDataBoundItems = true;
                ddlPic4.AppendDataBoundItems = true;
                ddlPic5.AppendDataBoundItems = true;
                ddlPic6.AppendDataBoundItems = true;
                ddlPic1.DataBind();
                ddlPic2.DataBind();
                ddlPic3.DataBind();
                ddlPic4.DataBind();
                ddlPic5.DataBind();
                ddlPic6.DataBind();
                
            }
            catch (Exception e)
            {
                lblResult.Text = e.ToString();
            }
        }

        private Lecture CreateLecture()
        {
            Lecture lecture = new Lecture();
            lecture.Name = txtName.Text;
            lecture.Description = txtDescription.Text;
            lecture.Type_ID = Convert.ToInt32(ddlLectureType.SelectedValue);
            lecture.Image_One = ddlPic1.SelectedValue;
            lecture.Image_Two = ddlPic2.SelectedValue;
            lecture.Image_Three = ddlPic3.SelectedValue;
            lecture.Image_Four = ddlPic4.SelectedValue;
            lecture.Image_Five = ddlPic5.SelectedValue;
            lecture.Image_Six = ddlPic6.SelectedValue;
            lecture.Image = ddlPicture.SelectedValue;
            lecture.Video = txtVideo.Text;
           
            return lecture;
        }
       
        protected void ddlPic1_SelectedIndexChanged(object sender, EventArgs e)
        {
          
            img1.ImageUrl = @"~/ImagesForLectures/" + ddlPic1.SelectedValue.ToString();
            
        }
        
        protected void ddlPic2_SelectedIndexChanged(object sender, EventArgs e)
        {
            img2.ImageUrl = @"~/ImagesForLectures/" + ddlPic2.SelectedValue.ToString();
        }

        protected void ddlPic3_SelectedIndexChanged(object sender, EventArgs e)
        {
            img3.ImageUrl = @"~/ImagesForLectures/" + ddlPic3.SelectedValue.ToString();
        }

        protected void ddlPic4_SelectedIndexChanged(object sender, EventArgs e)
        {
            img4.ImageUrl = @"~/ImagesForLectures/" + ddlPic4.SelectedValue.ToString();
        }

        protected void ddlPic5_SelectedIndexChanged(object sender, EventArgs e)
        {
            img5.ImageUrl = @"~/ImagesForLectures/" + ddlPic5.SelectedValue.ToString();
        }

        protected void ddlPic6_SelectedIndexChanged(object sender, EventArgs e)
        {
            img6.ImageUrl = @"~/ImagesForLectures/" + ddlPic6.SelectedValue.ToString();
        }

        protected void txtDescription_TextChanged(object sender, EventArgs e)
        {

        }

        
    }
}