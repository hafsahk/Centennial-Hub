using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;

namespace CentennialHub
{
    public partial class studentHomepage : System.Web.UI.Page
    {
        String program;
        int currentSem,i;
        List<String> courses = new List<String>();
        protected void Page_Load(object sender, EventArgs e)
        {
            
                Label1.Text = "Welcome " + Session["id"];
            
        }
        public void GettingStudentdata()
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["COMP231-Project"].ConnectionString);
            conn.Open();
            String gettingSemester = "select program,semester from student where stID='" + Session["id"].ToString() + "'";
            SqlCommand cmd = new SqlCommand(gettingSemester, conn);
            SqlDataReader semRdr = cmd.ExecuteReader();

            while (semRdr.Read())
            {
                program = Convert.ToString(semRdr["program"]);
                currentSem = Convert.ToInt16(semRdr["semester"]);//convert to integer
     
            }
            conn.Close();
        }

        //protected void LinkButton1_Click(object sender, EventArgs e)
        //{
        //    GettingStudentdata();
        //    previousSemCourses();
        //    Response.Write(courses);

        //}

        protected void Button1_Click(object sender, EventArgs e)
        {
            GettingStudentdata();
            previousSemCourses();

            for (int j = 0; j < courses.Count; j++)
            {
                Response.Write(courses[j]);
            }
        }

        //protected void Button1_Click(object sender, EventArgs e)
        //{
        //    GettingStudentdata();
        //    previousSemCourses();
        //}

        public void previousSemCourses()
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["COMP231-Project"].ConnectionString);
            conn.Open();
            for (i=1;i<=currentSem;i++) {
               
                String gettingcourses = "select coursecode from studentrecord where stID='" + Session["id"].ToString() + "' AND (remarks='unmet' and semester=1)";
                SqlCommand cmd = new SqlCommand(gettingcourses, conn);
                SqlDataReader courseRdr = cmd.ExecuteReader();
                while (courseRdr.Read())
                {
                    courses.Add(Convert.ToString(courseRdr["coursecode"]));
                }

                conn.Close();
            }
           
        }


        } 
    }
