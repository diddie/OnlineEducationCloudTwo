using OnlineEducation.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineEducation
{
    public partial class LecturePresent : System.Web.UI.Page
    {
    
        protected void Page_Load(object sender, EventArgs e)
        {
         
               
            
            fillPage();
          
           
        }
        private void fillPage()
        {
            if (!string.IsNullOrWhiteSpace(Request.QueryString["id"]))
            {
                int id = Convert.ToInt32(Request.QueryString["id"]);
                LectureModel model = new LectureModel();
                Lecture lecture = model.getLecture(id);
               

                //Fill page with data
                lblTitle.Text = lecture.Name;
                lblDescription.Text = lecture.Description.ToString().Replace(Environment.NewLine, "<br />");
                imgLecture.ImageUrl = "~/images/" + lecture.Image;
             
                HyperLink.Text = lecture.Video;
                HyperLink.NavigateUrl = lecture.Video;
              
                string str = "displayNone.png";
                if (lecture.Image_One != str)
                {
                    Image1.Visible = true;
                    HyperLink1.NavigateUrl = "~/ImagesForLectures/" + lecture.Image_One;
                    Image1.ImageUrl = "~/ImagesForLectures/" + lecture.Image_One;
                    Image1.Width = 100;
                    Image1.Height = 100;
                } else
                {
                    Image1.Visible = false;
                }

                    if (lecture.Image_Two != str)
                    {
                        Image2.Visible = true;
                        HyperLink2.NavigateUrl = "~/ImagesForLectures/" + lecture.Image_Two;
                        Image2.ImageUrl = "~/ImagesForLectures/" + lecture.Image_Two;
                        Image2.Height = 100;
                        Image2.Width = 100;
                    }
                    else
                    {
                        Image2.Visible = false;
                    }

                    if (lecture.Image_Three != str)
                    {
                        Image3.Visible = true;
                        HyperLink3.NavigateUrl = "~/ImagesForLectures/" + lecture.Image_Three;
                        Image3.ImageUrl = "~/ImagesForLectures/" + lecture.Image_Three;
                        Image3.Width = 100;
                        Image3.Height = 100;
                    }
                    else
                    {
                        Image3.Visible = false;
                    }

                    if (lecture.Image_Four != str)
                    {
                        Image4.Visible = true;
                        HyperLink4.NavigateUrl = "~/ImagesForLectures/" + lecture.Image_Four;
                        Image4.ImageUrl = "~/ImagesForLectures/" + lecture.Image_Four;
                        Image4.Width = 100;
                        Image4.Height = 100;
                    }
                    else
                    {
                        Image4.Visible = false;
                    }
                    
                    if (lecture.Image_Five != str)
                    {
                        Image5.Visible = true;
                        HyperLink5.NavigateUrl = "~/ImagesForLectures/" + lecture.Image_Five;
                        Image5.ImageUrl = "~/ImagesForLectures/" + lecture.Image_Five;
                        Image5.Width = 100;
                        Image5.Height = 100;
                    }
                    else
                    {
                        Image5.Visible = false;
                    }

                    if (lecture.Image_Six != str)
                    {
                        Image6.Visible = true;
                        HyperLink6.NavigateUrl = "~/ImagesForLectures/" + lecture.Image_Six;
                        Image6.ImageUrl = "~/ImagesForLectures/" + lecture.Image_Six;
                        Image6.Height = 100;
                        Image6.Width = 100;
                    }
                    else
                    {
                        Image6.Visible = false;
                    }


          
            
            }
     
        }
        void imageButton1Click(object sender, ImageClickEventArgs args)
        {
          
        }


        void imageButton2Click(object sender, ImageClickEventArgs args)
        {
           
        }
        void imageButton3Click(object sender, ImageClickEventArgs args)
        {
           
        }
        void imageButton4Click(object sender, ImageClickEventArgs args)
        {
            
        }
        void imageButton5Click(object sender, ImageClickEventArgs args)
        {
         
        }
        void imageButton6Click(object sender, ImageClickEventArgs args)
        {
          
        }


   
    }
}