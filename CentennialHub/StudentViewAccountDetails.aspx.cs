using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Configuration;

namespace CentennialHub
{
    public partial class ViewAccountDetails : System.Web.UI.Page
    {
               
        public string conn = ConfigurationManager.ConnectionStrings["COMP231-Project"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               
                SqlConnection con = new SqlConnection(conn);
                string str;
                con.Open();
                str = "Select stFirstName, stLastName, address, gender, contact, emergencyContact, primaryEmail, secondaryEmail, program, semester from Student where stID=4001";
                SqlCommand com = new SqlCommand(str, con);
                SqlDataReader reader = com.ExecuteReader();
                if (reader.Read())
                {
                    Label1.Text = reader["stFirstName"].ToString();
                    Label2.Text= reader["stLastName"].ToString();
                    Label3.Text = reader["address"].ToString();                
                    Label4.Text = reader["gender"].ToString();

                    Label5.Text = reader["contact"].ToString();
                    Label6.Text = reader["emergencyContact"].ToString();
                    Label7.Text = reader["primaryEmail"].ToString();
                    Label8.Text= reader["secondaryEmail"].ToString();
                  

                    Label9.Text= reader["program"].ToString();
                    Label10.Text= reader["semester"].ToString();
                   

                    reader.Close();
                    con.Close();
                }
            }

        }
        
    }
}