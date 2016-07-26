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
    public partial class Login : System.Web.UI.Page
    {
        string strConnString = ConfigurationManager.ConnectionStrings["COMP231-Project"].ConnectionString;
        string str = null;
        SqlCommand com;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
            }
        }

<<<<<<< HEAD
    protected void Button1_Click(object sender, EventArgs e)
    {       
 
        Response.Redirect("Default.aspx");
       
=======
        protected void Button1_Click(object sender, EventArgs e)
        {
            Object obj = null;
            SqlConnection con = new SqlConnection(strConnString);
            con.Open();



            Session["id"] = id.Text;
            str = "select * from Login where id = @id and password = @password";
            com = new SqlCommand(str, con);
            com.CommandType = System.Data.CommandType.Text;
            com.Parameters.AddWithValue("@id", Session["id"]);
            com.Parameters.AddWithValue("@password", password.Text);
            obj = com.ExecuteScalar();

            Response.Redirect("adminHomepage.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
>>>>>>> origin/master
    }
}