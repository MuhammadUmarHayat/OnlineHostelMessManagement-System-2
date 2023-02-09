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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string userType =DropDownList1.Text;
            string email = TextBox1.Text ;
            string password = TextBox2.Text;


            if (userType.Equals("Administrator") && email.Equals("admin@gmail.com") && password.Equals("admin"))
            {
                Session["email"] = email;
                Response.Redirect("Admin.aspx");
            }

            SqlConnection conn = new SqlConnection(DBConnection.connectionstring);
            string query = "select * from users where email='" + email + "' and password ='" + password + "' and userType='"+ userType + "'";
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(query, conn);
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
               
                if (userType.Equals("Manager"))
                {
                    Session["email"] = email;
                    Response.Redirect("Manager.aspx");
                }
                else if (userType.Equals("Customer"))
                {
                    Session["email"] = email;
                    Response.Redirect("Customer.aspx");
                }
                else
                {
                    Label1.Text = "Please enter corract user email or password";
                }


            }
            else
            {

               

            }


            
        }
    }
}