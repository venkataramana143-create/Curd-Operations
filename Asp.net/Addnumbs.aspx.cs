using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Asp.net
{
    public partial class Addnumbs : System.Web.UI.Page
    {
         
        protected void Page_Load(object sender, EventArgs e)
        {

        }
 
        protected void btnadd_Click(object sender, EventArgs e)
        {

            int a = int.Parse(txtfirst.Text);
            int b = int.Parse(txtsecond.Text);
            Response.Write($"{a + b} is added");
        }

        protected void btnsub_Click(object sender, EventArgs e)
        {

            int a = int.Parse(txtfirst.Text);
            int b = int.Parse(txtsecond.Text);
            Response.Write($"{a - b} is added");
        }

        protected void btnmul_Click(object sender, EventArgs e)
        {

            int a = int.Parse(txtfirst.Text);
            int b = int.Parse(txtsecond.Text);
            Response.Write($"{a * b} is added");
        }

        protected void btndiv_Click(object sender, EventArgs e)
        {

            int a = int.Parse(txtfirst.Text);
            int b = int.Parse(txtsecond.Text);
            Response.Write($"{a / b} is added");
        }
    }
}