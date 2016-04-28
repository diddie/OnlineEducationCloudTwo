using OnlineEducation.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineEducation.Pages
{
    public class PageMain
    {
     public  LectureTypeModel modelType = new LectureTypeModel();
     public  static LectureModel modelLecture = new LectureModel();
     public  List<Lecture> lectures = modelLecture.getAllLectures();

        public  void AddPage(int id_number,Panel panelContrl)

        {
            if (lectures != null)
            {
                foreach (Lecture lecture in lectures)
                {
                    if (lecture.Type_ID == id_number)
                    {
                        Panel lecturePanel = new Panel();
                        HyperLink hyperLink = new HyperLink
                        {

                            Text = lecture.Name,
                            CssClass = "HyperLinkLec",

                            NavigateUrl = string.Format("~/LecturePresent.aspx?id={0}", lecture.Lecture_ID),

                        };



                        //lecturePanel.CssClass = "main_lecture";
                        lecturePanel.Controls.Add(new Literal { Text = "<ul>" });
                        lecturePanel.Controls.Add(new Literal { Text = "<li>" });
                        lecturePanel.Controls.Add(hyperLink);
                        lecturePanel.Controls.Add(new Literal { Text = "</li>" });
                        lecturePanel.Controls.Add(new Literal { Text = "</ul>" });
                        lecturePanel.Controls.Add(new Literal { Text = "<br/>" });

                        panelContrl.Controls.Add(lecturePanel);
                    }
                }
            }
            else
            {
                panelContrl.Controls.Add(new Literal { Text = "Няма добавени уроци." });
            }
        }
    }
}