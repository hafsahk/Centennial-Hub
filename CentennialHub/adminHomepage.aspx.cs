using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CentennialHub
{
    public partial class adminHomepage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "Wellcome " + Session["id"];
        }

        protected void BtnLogout_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}