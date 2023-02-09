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
    public partial class AdminReports : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] == null)
            {
                Response.Redirect("Logout.aspx");
            }
            string email = Session["email"].ToString();
            Label1.Text = email;
            countTotalManagers();
            countTotalCustomers();
            countTotalPayments();
            countTotalMenues();
            showPayments();
        }
        private void showPayments()
        {
            SqlConnection conn = new SqlConnection(DBConnection.connectionstring);
            string query = "select * from  payments where paymentType='advance'";
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(query, conn);
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }




        private void countTotalManagers()
        {
            int count = 0;
            SqlConnection conn = new SqlConnection(DBConnection.connectionstring);
            String sqlQuery = "SELECT COUNT(*) FROM  users where userType='Manager'";
            SqlCommand cmd = new SqlCommand(sqlQuery, conn);
            try
            {
                conn.Open();

                count = (Int32)cmd.ExecuteScalar();  //returning single value
                lblMgr.Text = count.ToString();
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            finally
            {
                conn.Close();
            }

        }

        private void countTotalCustomers()
        {
            int count = 0;
            SqlConnection conn = new SqlConnection(DBConnection.connectionstring);
            String sqlQuery = "SELECT COUNT(*) FROM  users where userType='Customer'";
            SqlCommand cmd = new SqlCommand(sqlQuery, conn);
            try
            {
                conn.Open();

                count = (Int32)cmd.ExecuteScalar();  //returning single value
                lblCustomers.Text = count.ToString();
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            finally
            {
                conn.Close();
            }

        }

        private void countTotalPayments()
        {
            int count = 0;
            SqlConnection conn = new SqlConnection(DBConnection.connectionstring);
            String sqlQuery = "SELECT sum(amount) FROM  payments where paymentType='advance'";
            SqlCommand cmd = new SqlCommand(sqlQuery, conn);
            try
            {
                conn.Open();

                count = (Int32)cmd.ExecuteScalar();  //returning single value
                lblPayments.Text = count.ToString();
            }
            catch (Exception ex)
            {
                lblPayments.Text = "0";
            }
            finally
            {
                conn.Close();
            }

        }

        private void countTotalMenues()
        {
            int count = 0;
            SqlConnection conn = new SqlConnection(DBConnection.connectionstring);
            String sqlQuery = "SELECT sum(price) FROM menus";
            SqlCommand cmd = new SqlCommand(sqlQuery, conn);
            try
            {
                conn.Open();

                count = (Int32)cmd.ExecuteScalar();  //returning single value
                lblMenus.Text = count.ToString();
            }
            catch (Exception ex)
            {
                lblMenus.Text = "0";
            }
            finally
            {
                conn.Close();
            }

        }

    }
}