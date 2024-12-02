using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Asp.net
{
    public partial class Registation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            
            if(txtname.Text !=" ")
            {

                string s = " ";
                s += "Name is " + txtname.Text + "</br>";
                s += "Age is " +  txtage.Text + "</br>";
                s += "Email is " +  txtemail.Text + "</br>";
                s += "Pwd is " +  txtpwd.Text + "</br>";
                s += "conpwd is " + txtcpwd.Text + "</br>";
                s += "State is " + liststate.SelectedItem.Text + "</br>";
                lbldisplay.Text = "Successfully Submited data " + s;

            }
            
            
        }

        protected void txtname_TextChanged(object sender, EventArgs e)
        {
            
            txtname.Focus();
        }
    }
}