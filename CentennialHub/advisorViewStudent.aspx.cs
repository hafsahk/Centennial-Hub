using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace CentennialHub
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        string conn = ConfigurationManager.ConnectionStrings["Data Source=MYSQL_AMNA;Initial Catalog=COMP231-Project;Integrated Security=True"].ConnectionString;
        SqlCommand com;
        string str;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(conn);
            con.Open();
            str = "select * from Student where stID='" + TextBox1.Text.Trim() +"'";
            com = new SqlCommand(str, con);
            SqlDataReader reader = com.ExecuteReader();
            if (reader.Read())
            {
                TextBox2.Text = reader["stFirstName"].ToString();
                TextBox3.Text = reader["stLastName"].ToString();
                TextBox4.Text = reader["Program"].ToString();
                TextBox5.Text = reader["primaryEmail"].ToString();
                TextBox6.Text = reader["semester"].ToString();
                reader.Close();
                con.Close();
            }
        }
        public void idcheck()
        {
            SqlConnection con = new SqlConnection(conn);
            con.Open();
            str = "select count(*)from Student where stID='" + TextBox1.Text + "'";
            com = new SqlCommand(str, con);
            int count = Convert.ToInt32(com.ExecuteScalar());


        }
    }
}