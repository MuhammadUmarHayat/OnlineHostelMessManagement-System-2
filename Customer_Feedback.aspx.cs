using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;



namespace ShaistaFinalProject
{
    public partial class Customer_Feedback : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] == null)
            {
                Response.Redirect("Logout.aspx");
            }
            string email = Session["email"].ToString();
            Label1.Text = email;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string email = Session["email"].ToString();
            string message = TextBox1.Text;
            string query = "insert into feedbacks(customerid,message,date) values('"+email+"','"+message+"','"+DateTime.Now.ToString()+"')";
            SqlConnection conn = new SqlConnection(DBConnection.connectionstring);
            SqlCommand sqlCmd = new SqlCommand(query, conn);
            conn.Open();
            sqlCmd.ExecuteNonQuery();// insertion into table
            conn.Close();
            Label1.Text = "Submitted successfully";
        }
    }
}