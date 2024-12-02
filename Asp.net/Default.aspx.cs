using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Asp.net
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SqlConnection con = new SqlConnection("Data Source=HP15-PAVILION\\SQLEXPRESS;Initial Catalog=Test;User ID=venkat;Password=1432");

        protected void btninsert_Click(object sender, EventArgs e)
        {
            

            SqlCommand check = new SqlCommand("select Empid from Employee where Empid = '"+Txteid.Text+"'",con);
            SqlDataAdapter da = new SqlDataAdapter(check);
            DataTable dt = new DataTable(); 
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Employee Id already Exists');", true);
            }
            else
            {
                if (!IsPostBack)
                {
                    Getvalues();
                }
                int Empid = int.Parse(Txteid.Text.Trim());
                string Ename = Txtname.Text, City = DropDownList1.SelectedValue, sex = RadioButtonList1.SelectedValue, contact = Txtcontact.Text;
                double Age = double.Parse(Txtagee.Text.Trim());
                DateTime Joindate = DateTime.Parse(Txtjoindate.Text);
                con.Open();
                SqlCommand cmd = new SqlCommand("Insert into Employee values('" + Empid + "','" + Ename + "','" + City + "','" + Age + "','" + sex + "','" + Txtjoindate.Text + "','" + contact + "')", con);
                cmd.ExecuteNonQuery();
                con.Close();
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully saved');", true);


                Getvalues();
            }

        }
        void Getvalues()
        {
            SqlCommand cmd = new SqlCommand("Select * from Employee", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            int Empid = int.Parse(Txteid.Text.Trim());
            string Ename = Txtname.Text, City = DropDownList1.SelectedValue, sex = RadioButtonList1.SelectedValue, contact = Txtcontact.Text;
            double Age = double.Parse(Txtagee.Text.Trim());
            DateTime Joindate = DateTime.Parse(Txtjoindate.Text);
            con.Open();
            SqlCommand cmd = new SqlCommand("Update Employee set Ename='"+ Ename+"',Age='"+Age+"', city='"+City+"', sex='"+sex+"',JoiningDate='"+Txtjoindate.Text+"',contact='"+contact+"' where Empid='"+Empid+"' ",con);
             cmd.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Updated');", true);


            Getvalues();

        }

        protected void btnload_Click(object sender, EventArgs e)
        {
            Getvalues();
        }

        protected void btndelete_Click(object sender, EventArgs e)
        {
            int Empid = int.Parse (Txteid.Text.Trim()); 
            con.Open();
            SqlCommand cmd = new SqlCommand("Delete Employee where Empid='"+Empid+"'",con);
            cmd.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Deleted Successfully');", true);


            Getvalues();
        }

        protected void btnget_Click(object sender, EventArgs e)
        {
            int Empid = int.Parse(Txteid.Text.Trim());
            SqlCommand cmd = new SqlCommand("Select * from Employee where Empid='"+Empid+"'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}