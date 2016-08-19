using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CentennialHub
{
    public partial class studentLogin : System.Web.UI.Page
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

        protected void Button1_Click(object sender, EventArgs e)
        {
           Object obj = null;
            SqlConnection con = new SqlConnection(strConnString);
            con.Open();
            
                Session["id"] = id.Text;
                str = "select * from Login where id = @id and password = @password";
                com = new SqlCommand(str, con);
                com.CommandType = CommandType.Text;
                com.Parameters.AddWithValue("@id", Session["id"]);
                com.Parameters.AddWithValue("@password", password.Text);
                obj = com.ExecuteScalar();
                Response.Redirect("studentHomepage.aspx");   
        }
    }
}