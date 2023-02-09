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
    public partial class Admin_CustomerAttendance : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] == null)
            {
                Response.Redirect("Logout.aspx");
            }
            GridView1.Visible = false;
            Button1.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            foreach (GridViewRow row in GridView1.Rows)
            {
                string email = row.Cells[0].Text;
                string name = row.Cells[1].Text;
                RadioButton rb1 = (row.Cells[3].FindControl("RadioButton1") as RadioButton);
                RadioButton rb2 = (row.Cells[3].FindControl("RadioButton2") as RadioButton);
                string status = "";
                int present = 0;
                int absent = 0;
                if (rb1.Checked)
                {
                    status = "Present";
                    present = 1;

                }
                else
                {
                    absent = 1;
                    status = "Absent";
                }
                string markingDate = DateTime.Now.ToShortDateString();
                //save
                string customerid = email;
                string date = markingDate;
                string day = DateTime.Now.Day.ToString();
                string month = DateTime.Now.Month.ToString();
                string year = DateTime.Now.Year.ToString();
                string present1 = present.ToString();
                string absent1 = absent.ToString();
                string markedBy = "admin";
                string times = DropDownList1.Text;
                string isMarked = "1";
                saveAttendance(customerid,  date,  times, present1, month,  status, markedBy, isMarked, absent1);
                Label2.Text = "Attendance has been marked successfully!";
                GridView1.Visible = false;
            }

        }


        public Boolean saveAttendance( string customerid, string date, string time, string present, string month, string status, string markedBy, string isMarked, string absent)
        {
            string query = "insert into Customer_Attendances(customerid,date,time,present,month,status,markedBy,isMarked,absent) values ('" + customerid + "','" + date + "','" + time + "','" + present + "','" + month + "','" + status + "','" + markedBy + "','" + isMarked + "','" + absent + "')";
            SqlConnection conn = new SqlConnection(DBConnection.connectionstring);
            SqlCommand sqlCmd = new SqlCommand(query, conn);
            conn.Open();
            sqlCmd.ExecuteNonQuery();// insertion into db
            conn.Close();

            return true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {//next button
            string currentDate = DateTime.Now.ToShortDateString();
            string markingTime = DropDownList1.Text;
          
            bool result = isMarked(currentDate, markingTime);
            if (result)
            {

                Label2.Text = "Attendance is already marked";
                GridView1.Visible = false;//hide gridview
                Button1.Visible = false;
            }
            else
            {
                GridView1.Visible = true;//show
                Button1.Visible = true;

            }
        }

        public Boolean isMarked(string date, string time)
        {
            //check attendace is already marked or not
            SqlConnection conn = new SqlConnection(DBConnection.connectionstring);

            string query = "select * from Customer_Attendances where date='" + date + "' and time='" + time + "'";

            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(query, conn);
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                return true;

            }
            return false;

        }
    }
}