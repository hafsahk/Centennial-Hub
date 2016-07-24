﻿using System;
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

        }
        
    }
}