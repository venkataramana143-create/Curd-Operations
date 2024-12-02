using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Asp.net
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            if(txtname.Text =="venkat" && txtpwd.Text=="12345")
            {
                Response.Redirect("Default.aspx");
            }
            else
            {
                Response.Write("Invalid User");
            }
        }
    }
}