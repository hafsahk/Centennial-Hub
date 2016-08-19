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
        List<String> reqcourses = new List<String>();
        List<String> courses = new List<String>();
        List<String> preRequisites = new List<String>();
        List<String> email = new List<String>();
       
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "Welcome " + Session["id"];
        }
     

        protected void Button1_Click(object sender, EventArgs e)
        {
            previousSemCourses();
            GettingStudentdata();
            checkPrerequisite();
            displayProfIDs();
            requiredCourse();
            Label5.Text = "Course: ";
            Label2.Text = "Perequisites: ";
            Label7.Text = "Please contact the Professor(s) prior selecting the course(s) above.";
            int position = 0;


            foreach (var cou in reqcourses)
            {
                Label10.Text += "\n" + cou + "&nbsp";
            }

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
        public void requiredCourse()
        {
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["COMP231-Project"].ConnectionString);
            conn.Open();
            String preReq = "select courseCode from courses where progCode='" + program + "' And noOfSemesters ='"+i+"'";
            SqlCommand cmd = new SqlCommand(preReq, conn);
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    reqcourses.Add(Convert.ToString(reader["courseCode"]));
                }
                reader.Close();
            }
            
        }
        public void previousSemCourses()
        {
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["COMP231-Project"].ConnectionString);
            conn.Open();
            String gettingcourses = "select courseCode from studentRecord where stID='" + Session["id"].ToString() + "' AND remarks='unmet'";
            SqlCommand cmd = new SqlCommand(gettingcourses, conn);
            SqlDataReader courseRdr = cmd.ExecuteReader();
            if (courseRdr.HasRows)
            {
                while (courseRdr.Read())
                {
                   
                    courses.Add(Convert.ToString(courseRdr["courseCode"]));
                    //pendingCourses = Convert.ToString(courseRdr["coursecode"]);

                }
                foreach (var course in courses)
                {
                    Label5.Text += "\n" + course + "&nbsp";
                }


                courseRdr.Close();
            }
            else {
                Label5.Text = "No previous pending course";

            }

        }
        // register button functionality
        protected void btnRegister_Click(object sender, EventArgs e)
        {

        }

        public void checkPrerequisite()
        {
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["COMP231-Project"].ConnectionString);
            conn.Open();
            String preReq = "select prerequisite from courses Inner join studentrecord On courses.CourseCode = studentrecord.CourseCode where studentrecord.stID='" + Session["id"].ToString() + "' And courses.courseCode = studentrecord.courseCode AND studentrecord.remarks='unmet'";
            SqlCommand cmd = new SqlCommand(preReq, conn);
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    preRequisites.Add(Convert.ToString(reader["prerequisite"]));
                }
                reader.Close();
            }
            else
            {
                Label6.Text = "No pre-requisite pending";
            }

        }
        public void displayProfIDs()
        {
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["COMP231-Project"].ConnectionString);
            conn.Open();
            String preReq = "select Distinct faculty.email from courses Inner join studentrecord On courses.CourseCode = studentrecord.CourseCode Inner Join CourseDetails On courses.courseCode = courseDetails.courseCode Inner Join faculty On CourseDetails.facID = faculty.facID where studentrecord.stID='"  + Session["id"].ToString() +  "' And courses.courseCode = studentrecord.courseCode AND studentrecord.remarks='unmet'";
            SqlCommand cmd = new SqlCommand(preReq, conn);
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    email.Add(Convert.ToString(reader["email"]));
                }
                reader.Close();
                conn.Close();
            }
            else {

                Label7.Text = "No contact found";  }
        }
    }
}
