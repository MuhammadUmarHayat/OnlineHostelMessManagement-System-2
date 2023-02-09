using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShaistaFinalProject
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string email = txtEmail.Text;
            string name = txtNmae.Text;
            string password = txtPw.Text;
            string cnic = txtCnic.Text;
            string mobile = txtMobileNo.Text;
            string address = txtAddress.Text;
            string usertype = "Customer";
            string status="active";
            string query = "insert into users(name,email,  password, cnic, mobile, address, usertype, status) values ('" + name+ "','" + email + "','" + password + "','" + cnic + "','" + mobile + "','" + address + "','" + usertype + "','" + status + "')";
            SqlConnection conn = new SqlConnection(DBConnection.connectionstring);
            SqlCommand sqlCmd = new SqlCommand(query, conn);
            conn.Open();
            sqlCmd.ExecuteNonQuery();// insertion into db table
            conn.Close();
            Label1.Text = "You are registered successfully";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
        }
    }
}