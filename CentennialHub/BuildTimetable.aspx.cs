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
        String pendingCourses;
        List<String> courses = new List<String>();
        protected void Page_Load(object sender, EventArgs e)
        {

            Label1.Text = "Welcome " + Session["id"];

        }
        public void GettingStudentdata()
        {
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["COMP231-Project"].ConnectionString);
            conn.Open();
            String gettingSemester = "select program,semester from student where stID='" + Session["id"].ToString() + "'";
            SqlCommand cmd = new SqlCommand(gettingSemester, conn);
            SqlDataReader semRdr = cmd.ExecuteReader();

            while (semRdr.Read())
            {
                program = Convert.ToString(semRdr["program"]);
                currentSem = Convert.ToInt16(semRdr["semester"]);//convert to integer

            }
            semRdr.Close();
            Response.Write(program);
            Response.Write(currentSem);
            conn.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            GettingStudentdata();
            previousSemCourses();
            Response.Write(pendingCourses);
            for (int j = 0; j < courses.Count; j++)
            {
                Response.Write("\n" + courses[j]);
            }
            conn.Close();
        }


        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        public void previousSemCourses()
        {
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["COMP231-Project"].ConnectionString);
            conn.Open();
            String gettingcourses = "select coursecode,semester from studentrecord where stID='" + Session["id"].ToString() + "' AND remarks='unmet'";
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
        protected void Button2_Click(object sender, EventArgs e)
        {

        }


    }
}
