using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace OnlineEducation.Models
{
    public class LectureTypeModel
    {
        public string InsertLectureTypes(LectureType lectureType)
        {
            try
            {
                OnlineStudyEntities db = new OnlineStudyEntities();
                db.LectureType.Add(lectureType);
                db.SaveChanges();
                return lectureType.Name + " е упешно качена !";
            }
            catch(Exception e)
            {
                return "Error " + e;
            }
        }
        public string UpdateLectureTypes(int id , LectureType lectureType)
        {
            try
            {
                OnlineStudyEntities db = new OnlineStudyEntities();
                LectureType lt = db.LectureType.Find(id);
                lt.Name = lectureType.Name;
                db.SaveChanges();
                return lectureType.Name + " е успешно редактирана !"; 
            }
            catch(Exception e)
            {
                return "Error " + e;
            }
        }
        public string DeleteLectureTypes(int id )
        {
            try
            {
                OnlineStudyEntities db = new OnlineStudyEntities();
                LectureType lecureType = db.LectureType.Find(id);
                db.LectureType.Attach(lecureType);
                db.LectureType.Remove(lecureType);
                db.SaveChanges();
                return lecureType.Name + " е успешно изтрита!";
            }
            catch (Exception e)
            {
                return "Error " + e;
            }
        }
        public LectureType getLectureType(int id)
        {
            try
            {
                using(OnlineStudyEntities db = new OnlineStudyEntities())
                {
                    LectureType lecture = db.LectureType.Find(id);
                    return lecture;
                }
            }catch(Exception )
            {
                return null;
            }
        }
    }
    
   
   

}