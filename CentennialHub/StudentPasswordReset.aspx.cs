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
    public partial class StudentPasswordReset : System.Web.UI.Page
    {
      //  public SqlConnection conn = new SqlConnection("Data Source=PC\\MYSQL_AMNA;Initial Catalog=COMP231-Project;Integrated Security=True");
        public string conn = ConfigurationManager.ConnectionStrings["COMP231-Project"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            lbl1.Text = "Welcome " + Session["stFirstName"];
        }

        protected void SaveButton_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(conn);
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandText = "update Login set confirmPass = @ password";
            cmd.Parameters.AddWithValue("@password", confirmPass.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("studentHomepage.aspx");
        }

        protected void CancelButton_Click(object sender, EventArgs e)
        {

        }

       

    }
}