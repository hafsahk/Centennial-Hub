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
    public partial class studentHomepage : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

            Label1.Text = "Welcome " + Session["id"];

        }
      
          protected void btnLogout_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
        
        
    }
}
          
        
