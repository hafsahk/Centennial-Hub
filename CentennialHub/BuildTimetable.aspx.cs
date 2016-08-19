using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CentennialHub
{
    public partial class BuildTimetable : System.Web.UI.Page
    {
        String program;
        SqlConnection conn;
        int currentSem, i;
        List<CourseTimes> courseList = new List<CourseTimes>();
        List<CourseTimes> orderedList = new List<CourseTimes>();
        List<String> courses = new List<String>();
        List<String> preRequisites = new List<String>();
        List<String> email = new List<String>();
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "Welcome " + Session["id"];
        }
     

        protected void Button1_Click(object sender, EventArgs e)
        {
            courseList.Clear();
            orderedList.Clear();
            GettingStudentdata();
            previousSemCourses();
            checkPrerequisite();
            displayProfIDs();
            Label5.Text = "Course: ";
            Label2.Text = "Perequisites: ";
            Label7.Text = "Please contact the Professor(s) prior selecting the course(s) above.";
            int position = 0;


            foreach (var course in courses)
            {
                Label5.Text += "\n" + course + "&nbsp";
            }

            foreach (var pre in preRequisites)
            {
                //Label2.Text += "\n" + pre + "&nbsp";
                if (!pre.Equals(""))
                {
                    Label2.Text += "<br/>&nbsp&nbsp&nbsp" + "To take '" + courses.ElementAt(position) + "' you must have completed: "
                        + preRequisites.ElementAt(position);// + ". The professor(s) can be reached at: " + email.ElementAt(position-1);
                }
                position++;
            }

             foreach (var item in email)
             {
                 Label7.Text += "\n" + item + "&nbsp";
             }


            /*for (int j = 0; j < courses.Count; j++)
            {
                Label5.Text += "\n" + courses[j] + "  ";
            }*/
            conn.Close();
        }


        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

        public void GettingStudentdata()
        {
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["COMP231-Project"].ConnectionString);
            conn.Open();
            String gettingSemester = "select program, semester from student where stID='" + Session["id"].ToString() + "'";
            SqlCommand cmd = new SqlCommand(gettingSemester, conn);
            SqlDataReader semRdr = cmd.ExecuteReader();

            while (semRdr.Read())
            {
                program = Convert.ToString(semRdr["program"]);
                currentSem = Convert.ToInt16(semRdr["semester"]);//convert to integer
            }
            semRdr.Close();
            Label3.Text = "Program: " + program;
            Label4.Text = "Semester: " + currentSem.ToString();
            conn.Close();
        }

        public void getAllCourses()
        {
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["COMP231-Project"].ConnectionString);
            conn.Open();
            String gettingCourses = "select * from tt";// where stID='" + Session["id"].ToString() + "'";
            SqlCommand cmd = new SqlCommand(gettingCourses, conn);
            SqlDataReader semRdr = cmd.ExecuteReader();
            
            while (semRdr.Read())
            {
                if(Convert.ToString(semRdr["Monday"]) != "")
                {
                    courseList.Add(new CourseTimes(Convert.ToString(semRdr["start_time"]), Convert.ToString(semRdr["end_time"]), Convert.ToString(semRdr["Monday"]), Days.Monday));
                }
                if (Convert.ToString(semRdr["Tuesday"]) != "")
                {
                    courseList.Add(new CourseTimes(Convert.ToString(semRdr["start_time"]), Convert.ToString(semRdr["end_time"]), Convert.ToString(semRdr["Tuesday"]), Days.Tuesday));
                }
                if (Convert.ToString(semRdr["Wednesday"]) != "")
                {
                    courseList.Add(new CourseTimes(Convert.ToString(semRdr["start_time"]), Convert.ToString(semRdr["end_time"]), Convert.ToString(semRdr["Wednesday"]), Days.Wednesday));
                }
                if (Convert.ToString(semRdr["Thursday"]) != "")
                {
                    courseList.Add(new CourseTimes(Convert.ToString(semRdr["start_time"]), Convert.ToString(semRdr["end_time"]), Convert.ToString(semRdr["Thursday"]), Days.Thursday));
                }
                if (Convert.ToString(semRdr["Friday"]) != "")
                {
                    courseList.Add(new CourseTimes(Convert.ToString(semRdr["start_time"]), Convert.ToString(semRdr["end_time"]), Convert.ToString(semRdr["Friday"]), Days.Friday));
                }                
            }

            var orderedCourse = from course in courseList
                                orderby course.Day
                                select new CourseTimes(course.StartTime, course.EndTime, course.Course, course.Day);

            Label7.Text = "";

            foreach (var item in orderedCourse)
            {
                orderedList.Add(item);
            }

        }

        public void previousSemCourses()
        {
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["COMP231-Project"].ConnectionString);
            conn.Open();
            String gettingcourses = "select studentRecord.StID, courses.courseName, courses.courseCode, studentrecord.semester from studentrecord inner join courses On studentRecord.courseCode = courses.courseCode where studentrecord.stID='" + Session["id"].ToString() + "' AND studentrecord.remarks='unmet'";
            SqlCommand cmd = new SqlCommand(gettingcourses, conn);
            SqlDataReader courseRdr = cmd.ExecuteReader();

            while (courseRdr.Read())
            {
                courses.Add(Convert.ToString(courseRdr["coursecode"]));
                //pendingCourses = Convert.ToString(courseRdr["coursecode"]);
               
            }
            courseRdr.Close();

        }
        // register button functionality
        protected void btnRegister_Click(object sender, EventArgs e)
        {
            getAllCourses();

            Label7.Text = "";

            foreach (var item in orderedList)
            {
                Label7.Text += item.ToString() + "<br/>";
            }
        }

        public void checkPrerequisite()
        {
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["COMP231-Project"].ConnectionString);
            conn.Open();
            String preReq = "select prerequisite from courses Inner join studentrecord On courses.CourseCode = studentrecord.CourseCode where studentrecord.stID='" + Session["id"].ToString() + "' And courses.courseCode = studentrecord.courseCode AND studentrecord.remarks='unmet'";
            SqlCommand cmd = new SqlCommand(preReq, conn);
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                preRequisites.Add(Convert.ToString(reader["prerequisite"]));
            }   
            reader.Close();
        }

        public void displayProfIDs()
        {
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["COMP231-Project"].ConnectionString);
            conn.Open();
            String preReq = "select Distinct faculty.email from courses Inner join studentrecord On courses.CourseCode = studentrecord.CourseCode Inner Join CourseDetails On courses.courseCode = courseDetails.courseCode Inner Join faculty On CourseDetails.facID = faculty.facID where studentrecord.stID='" + Session["id"].ToString() + "' And courses.courseCode = studentrecord.courseCode AND studentrecord.remarks='unmet'";
            SqlCommand cmd = new SqlCommand(preReq, conn);
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
               email.Add(Convert.ToString(reader["email"]));
             }
            reader.Close();
            conn.Close();
        }
    }
}
