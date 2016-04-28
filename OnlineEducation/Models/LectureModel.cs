using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace OnlineEducation.Models
{
    public class LectureModel
    {
        public string InsertLecture(Lecture lecture)
        {
            try
            {
                OnlineStudyEntities db = new OnlineStudyEntities();
                db.Lecture.Add(lecture);
                db.SaveChanges();
                return lecture.Name + " е успешно качена!";
                
            }catch(Exception e)
            {
                return "Error  " + e; 
            }
        }
        public string UpdateLecture(int id, Lecture lecutre)
        {
            try
            {
                OnlineStudyEntities db = new OnlineStudyEntities();
                Lecture l = db.Lecture.Find(id);
                l.Name = lecutre.Name;
                l.Description = lecutre.Description;
                l.Type_ID = lecutre.Type_ID;
                l.Image = lecutre.Image;
                l.Image_One = lecutre.Image_One;
                l.Image_Two = lecutre.Image_Two;
                l.Image_Three = lecutre.Image_Three;
                l.Image_Four = lecutre.Image_Four;
                l.Image_Five = lecutre.Image_Five;
                l.Image_Six = lecutre.Image_Six;
                l.Video = lecutre.Video;
                
                db.SaveChanges();
                return lecutre.Name + " е успешно редактирана!";
            }catch(Exception e)
            {
                return "Error " + e;
            }
        }
        public string DeleteLecture(int id )
        {
            try
            {
              
                OnlineStudyEntities db = new OnlineStudyEntities();
                Lecture lecture = db.Lecture.Find(id);
                db.Lecture.Attach(lecture);
                db.Lecture.Remove(lecture);
                db.SaveChanges();
                return lecture.Name + " е успешно изтрита !";
            }catch(Exception e)
            {
                return "Error " + e;
            }
        }
        public Lecture getLecture(int id)
        {
            try 
            {
                using (OnlineStudyEntities db = new OnlineStudyEntities())
                {
                    Lecture lecture = db.Lecture.Find(id);
                    return lecture;
                }
            }catch(Exception )
            {
                return null;
            }
        }
        public List<Lecture> getAllLectures()
        {
            try
            {
                using(OnlineStudyEntities db = new OnlineStudyEntities())
                {
                    List<Lecture> lecture = (from x in db.Lecture select x ).ToList();

                    return lecture;
                }
            }catch(Exception )
            {
                return null;
            }
        }
        public List<Lecture> getLectureByType(int typeId)
        {
            try
            {
                using (OnlineStudyEntities db = new OnlineStudyEntities())
                {
                    List<Lecture> lecture = (from x in db.Lecture
                                             where x.Type_ID == typeId
                                             select x).ToList();
                    return lecture;
                }
            }catch(Exception )
            {
                return null;
            }
        }
       
       
    }
}