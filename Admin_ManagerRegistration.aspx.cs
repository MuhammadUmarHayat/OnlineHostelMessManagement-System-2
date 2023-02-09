using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace ShaistaFinalProject
{
    public partial class Admin_ManagerRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] == null)
            {
                Response.Redirect("Logout.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string email = txtEmail.Text;
            string name = txtNmae.Text;
            string password = txtPw.Text;
            string cnic = txtCnic.Text;
            string mobile = txtMobileNo.Text;
            string address = txtAddress.Text;
            string usertype = "Manager";
            string status = "active";
            string query = "insert into users(name,email,  password, cnic, mobile, address, usertype, status) values ('" + name + "','" + email + "','" + password + "','" + cnic + "','" + mobile + "','" + address + "','" + usertype + "','" + status + "')";
            SqlConnection conn = new SqlConnection(DBConnection.connectionstring);
            SqlCommand sqlCmd = new SqlCommand(query, conn);
            conn.Open();
            sqlCmd.ExecuteNonQuery();// insertion into db
            conn.Close();
            Label1.Text = "Manager is  registered successfully";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin_ManagerRegistration.aspx");
        }
    }
}