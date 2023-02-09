using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShaistaFinalProject
{
    public partial class Customer_AttendanceHistory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] == null)
            {
                Response.Redirect("Logout.aspx");
            }
            string email = Session["email"].ToString();
            Label1.Text = email;
            string name = getName(email);
            SqlConnection conn = new SqlConnection(DBConnection.connectionstring);
         
            string query = "select * from Customer_Attendances where customerid='" + name+"'";

            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(query, conn);
            da.Fill(dt);

            if (dt.Rows.Count > 0)
            {

                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }

        private string getName(string email)
        {
            string name = "";
            SqlConnection conn = new SqlConnection(DBConnection.connectionstring);
            String query = "SELECT name FROM  users where email='"+email+"'";
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(query, conn);
            da.Fill(dt);

            if (dt.Rows.Count > 0)
            {

                name = dt.Rows[0]["name"].ToString();
                return name;
            }
            return name;
        }
    }
}