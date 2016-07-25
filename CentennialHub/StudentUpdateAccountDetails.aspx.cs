using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace CentennialHub
{
    public partial class UpdateAccountDetails : System.Web.UI.Page
    {
       public SqlConnection conn = new SqlConnection("Data Source=PC\\MYSQL_AMNA;Initial Catalog=COMP231-Project;Integrated Security=True");
             
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand com;
            string str;
            conn.Open();
            str = "Select stFirstName, stLastName, address, gender, contact, emergencyContact, primaryEmail, secondaryEmail, program, semester from Student where stID=4001";
            com = new SqlCommand(str, conn);
            SqlDataReader reader = com.ExecuteReader();
            if (reader.Read())
            {
               fname.Text = reader["stFirstName"].ToString();
               lname.Text = reader["stLastName"].ToString();
               address.Text = reader["address"].ToString();
               gender.Text = reader["gender"].ToString();
               contact.Text = reader["contact"].ToString();
               emergencyContact.Text = reader["emergencyContact"].ToString();
               pEmail.Text = reader["primaryEmail"].ToString();
               sEmail.Text = reader["secondaryEmail"].ToString();
               program.Text = reader["program"].ToString();
               semester.Text = reader["semester"].ToString();
               reader.Close();
               conn.Close();
            }
        }
        protected void SaveButton_Click(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "update Student set  address = @address, gender = @gender, contact = @contact, emergencyContact = @emergencyContact, program = @program, semester = @semester Where (stID = 4001)";
            // cmd.CommandType = CommandType.Text;
           // cmd.Parameters.AddWithValue("@stFirstName", fname.Text);
          //  cmd.Parameters.AddWithValue("@stLastName", lname.Text);
            cmd.Parameters.AddWithValue("@address", address.Text);
            cmd.Parameters.AddWithValue("@gender", gender.Text);
            cmd.Parameters.AddWithValue("@contact", contact.Text);
            cmd.Parameters.AddWithValue("@emergencyContact", emergencyContact.Text);
            //cmd.Parameters.AddWithValue("@primaryEmail", pEmail.Text);
            //cmd.Parameters.AddWithValue("@secondaryEmail", sEmail.Text);
            cmd.Parameters.AddWithValue("@program", program.Text);
            cmd.Parameters.AddWithValue("@semester", semester.Text);
            cmd.ExecuteNonQuery();
            conn.Close();
         //   fname = @stFirstName, lname = @stLastName,
            // pEmail = @primaryEmail, sEmail = @secondaryEmail,
           
        }
    }
}