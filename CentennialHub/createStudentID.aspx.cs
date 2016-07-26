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
    public partial class createStudentID1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
            if (IsPostBack)
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["COMP231-Project"].ConnectionString);
                conn.Open();
                String idexists = "select count(*) from student where stID='"+sid+"'";
                SqlCommand cmd = new SqlCommand(idexists, conn);
                int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
                if (temp == 1) {
                    Response.Write("The id you have entered already exists");
                }
                conn.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["COMP231-Project"].ConnectionString);
            conn.Open();
            String addingData ="Insert into Student(stID,stFirstName,stMiddleName,stLastName,gender,address,primaryEmail,secondaryEmail,contact,emergencyContact,program,semester,password,type) values (@id,@fname,@mname,@lname,@gender,@address,@pemail,@semail,@contact,@econtact,@prog,@sem,@password,@type)";
            SqlCommand cmd = new SqlCommand(addingData, conn);
            cmd.Parameters.AddWithValue("@id",sid.Text);
            cmd.Parameters.AddWithValue("@fname",fname.Text);
            cmd.Parameters.AddWithValue("@mname", mname.Text);
            cmd.Parameters.AddWithValue("@lname", lname.Text);

            cmd.Parameters.AddWithValue("@gender", gender.Text);
            cmd.Parameters.AddWithValue("@address", address.Text);
            cmd.Parameters.AddWithValue("@pemail", email.Text);
            cmd.Parameters.AddWithValue("@semail", semail.Text);
            cmd.Parameters.AddWithValue("@contact", contact.Text);
            cmd.Parameters.AddWithValue("@eContact", eContact.Text);
            
            cmd.Parameters.AddWithValue("@prog", program.Text);
            cmd.Parameters.AddWithValue("@sem", semester.Text);
            cmd.Parameters.AddWithValue("@password", password.Text);
            cmd.Parameters.AddWithValue("@type", typ.Text);
            cmd.ExecuteNonQuery();
            conn.Close();
            Response.Write("id has been created");
        }
    }
}