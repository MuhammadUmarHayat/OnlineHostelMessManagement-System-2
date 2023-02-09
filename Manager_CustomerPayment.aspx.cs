using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace ShaistaFinalProject
{
    public partial class Manager_CustomerPayment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] == null)
            {
                Response.Redirect("Logout.aspx");
            }
            if (Session["customer"] == null)
            {
                Response.Redirect("Logout.aspx");
            }
            string email = Session["email"].ToString();
            Label1.Text = email;
            string customer = Session["customer"].ToString();
            SqlConnection conn = new SqlConnection(DBConnection.connectionstring);
            string query = "select * from Customer_Shoppings where customerId='" + customer + "'";
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(query, conn);
            da.Fill(dt);

            if (dt.Rows.Count > 0)
            {
                int total = 0;
                int max = dt.Rows.Count;
                for (int i = 0; i < max; i++)
                {
                    string q1 = dt.Rows[i]["qty"].ToString();
                    string p1 = dt.Rows[i]["price"].ToString();
                    int t1 = Convert.ToInt32(q1) * Convert.ToInt32(p1);
                    total += t1;


                }
                Label2.Text = "Grand Total : " + total;
                Session["total"] = total;
            }




        }
        

        protected void Button1_Click(object sender, EventArgs e)
        {
            GridView1.Visible = false;

            string userid, payment, paymentType, paymentMethod, date, status;
            userid = Session["customer"].ToString();
            payment = Session["total"].ToString();
            paymentType = "meal";
            paymentMethod = "cash";
            date = DateTime.Now.ToString();
            status = "paid";

            emptyShoppingCart();//empty cart
            saveCustomerPayment(userid, payment, paymentType, paymentMethod, date, status);

            Button1.Visible = false;
            Label3.Text = "Thank you for your order";
        }
        private void emptyShoppingCart()
        {

            string query = "delete from Customer_Shoppings";
            SqlConnection conn = new SqlConnection(DBConnection.connectionstring);
            SqlCommand sqlCmd = new SqlCommand(query, conn);
            conn.Open();
            sqlCmd.ExecuteNonQuery();
            conn.Close();

        }
        public void saveCustomerPayment(string customerId, string amount, string PaymentType, string method, string DateOfSubmission, string status)
        {
            string query = "insert into payments(customerId,amount,PaymentType,method,DateOfSubmission,status) values ('" + customerId + "','" + amount + "','" + PaymentType + "','" + method + "','" + DateOfSubmission + "','" + status + "')";
            SqlConnection conn = new SqlConnection(DBConnection.connectionstring);
            SqlCommand sqlCmd = new SqlCommand(query, conn);
            conn.Open();
            sqlCmd.ExecuteNonQuery();// insertion into db
            conn.Close();

            
        }


    }
}