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
    public partial class AdvisorPasswordUpdate : System.Web.UI.Page
    {
        public string conn = ConfigurationManager.ConnectionStrings["COMP231-Project"].ConnectionString;

       
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
            SqlConnection con = new SqlConnection(conn);
            con.Open();
            str = "select * from Login ";
            com = new SqlCommand(str, con);
            SqlDataReader reader = com.ExecuteReader();
            while (reader.Read())
            {
                if (curPass.Text == reader["password"].ToString())
                {
                    up = 1;
                }
            }
            reader.Close();
            con.Close();
            if (up == 1)
            {
                con.Open();
                str = "update login set password = @password where id='" + Session["id"].ToString() + "'";
                com = new SqlCommand(str, con);
                com.Parameters.Add(new SqlParameter("@password", SqlDbType.VarChar, 50));
                com.Parameters["@password"].Value = nPass.Text;
                com.ExecuteNonQuery();
                con.Close();
                Response.Redirect("advisorHomepage.aspx");
            }
            else
            {
                Response.Write("Please enter correct Current password");

            }

        }
        protected void CancelButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("advisorHomepage.aspx");
        }
    }
}