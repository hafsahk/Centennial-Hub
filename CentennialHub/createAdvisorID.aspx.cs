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
    public partial class createStudentID : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
<<<<<<< HEAD
            if (!IsPostBack)
            {
                this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
            }
=======
            this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
            if (IsPostBack)
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["COMP231-Project"].ConnectionString);
                conn.Open();
                String idexists = "select count(*) from faculty where facID='" + id + "'";
                SqlCommand cmd = new SqlCommand(idexists, conn);
                int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
                if (temp == 1)
                {
                    Response.Write("The id you have entered already exists");
                }
                conn.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["COMP231-Project"].ConnectionString);
            conn.Open();
            String addingData = "Insert into Faculty(facID,stFirstName,stMiddleName,stLastName,address,email,contact,type,department,password) values (@id,@fname,@mname,@lname,@address,@email,@contact,@type,@dept,@password)";
            SqlCommand cmd = new SqlCommand(addingData, conn);
            cmd.Parameters.AddWithValue("@id", id.Text);
            cmd.Parameters.AddWithValue("@fname", fname.Text);
            cmd.Parameters.AddWithValue("@mname", mname.Text);
            cmd.Parameters.AddWithValue("@lname", lname.Text);
            cmd.Parameters.AddWithValue("@address", address.Text);
            cmd.Parameters.AddWithValue("@email", email.Text);
            cmd.Parameters.AddWithValue("@contact", contact.Text);
           
            cmd.Parameters.AddWithValue("@type", typ.Text);
            cmd.Parameters.AddWithValue("@dept", department.Text);
            cmd.Parameters.AddWithValue("@password", password.Text);
            
            cmd.ExecuteNonQuery();
            conn.Close();
            Response.Write("id has been created");
>>>>>>> origin/master
        }
    }
}