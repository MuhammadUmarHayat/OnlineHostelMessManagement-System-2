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
    public partial class Manager_Deposits : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            bindUsers();
        }
        private void bindUsers()
        {
            SqlConnection conn = new SqlConnection(DBConnection.connectionstring);

            string query = "select * from users ";

            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(query, conn);
            da.Fill(dt);

            if (dt.Rows.Count > 0)
            {
                ddlUserID.DataTextField = "email";
                ddlUserID.DataValueField = "email";
                ddlUserID.DataSource = dt;
                ddlUserID.DataBind();
            }


        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            //show customer payments
            string userid = DropDownList1.Text;
            SqlConnection conn = new SqlConnection(DBConnection.connectionstring);
            string query = "select * from payments where customerId='"+userid+"'";
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(query, conn);
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
         }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string userId = ddlUserID.Text;
            string payment = TextBox1.Text;
            string type = DropDownList1.Text;
            string method = "cash";
            string date = DateTime.Now.ToShortDateString();
            string status = "paid";

            saveCustomerPayment(userId, payment, type, method, date, status);
            Label2.Text = "Saved successfully!";
        }

        public Boolean saveCustomerPayment(string customerId, string amount, string PaymentType, string method, string DateOfSubmission, string status)
        {
            string query = "insert into payments(customerId,amount,PaymentType,method,DateOfSubmission,status) values ('" + customerId+ "','" + amount + "','" + PaymentType + "','" + method + "','" + DateOfSubmission + "','" + status + "')";
            SqlConnection conn = new SqlConnection(DBConnection.connectionstring);
            SqlCommand sqlCmd = new SqlCommand(query, conn);
            conn.Open();
            sqlCmd.ExecuteNonQuery();// insertion into db
            conn.Close();

            return true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Manager_Deposits.aspx");
        }
    }
}