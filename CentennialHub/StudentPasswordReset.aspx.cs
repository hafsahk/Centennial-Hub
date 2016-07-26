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
       public string conn = ConfigurationManager.ConnectionStrings["COMP231-Project"].ConnectionString;

        string strConnString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        string str = null;
        SqlCommand com;
        byte up;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
               lbl1.Text = "Welcome " + Session["id"];
            }
        }

        protected void SaveButton_Click(object sender, EventArgs e)
        {
            //SqlConnection con = new SqlConnection(conn);
            //con.Open();
            //SqlCommand cmd = con.CreateCommand();
            //if (confirmPass.Text == newPass.Text)
            //{
            //cmd.CommandText = "update Login set confirmPass = @password where id = @id";
            //cmd.Parameters.AddWithValue("@password", confirmPass.Text);
            //cmd.ExecuteNonQuery();
            //con.Close();
            //Response.Redirect("studentHomepage.aspx");
            //}



        }

        protected void CancelButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("studentHomepage.aspx");
        }
    }
}