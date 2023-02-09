using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ShaistaFinalProject
{
    public partial class AdminMenue : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] == null)
            {
                Response.Redirect("Logout.aspx");
            }
            string email = Session["email"].ToString();
            Label1.Text = email;

            showMenu();
           
        }
       
        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            lblDOM.Text = Calendar1.SelectedDate.ToString();

        }

        protected void Calendar2_SelectionChanged(object sender, EventArgs e)
        {
            lblDOE.Text = Calendar2.SelectedDate.ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string title = txtTitle.Text;

            string category = ddlCategory.Text;
            string unit = txtUnit.Text;
            string price = txtPrice.Text;
            string dom = lblDOM.Text;
            string qty = txtQty.Text; ;
            string description = txtDescription.Text;
            string doe = lblDOE.Text;
            string status = "ok";
            string approvedBy = "Admin";
            FileUpload1.SaveAs(Server.MapPath("~/images/") + Path.GetFileName(FileUpload1.FileName));
            string link = "images/" + Path.GetFileName(FileUpload1.FileName);

            
            bool result = saveMeal(title, category, unit, price, qty, link, description, dom, doe, status, approvedBy);
            if (result)
            {
                Label2.Text = "Saved  successfully!";
                showMenu();
            }
            else
            {
                Label2.Text = "Something is wrong please try latter!";
            }
        }
        private void showMenu()
        {
            SqlConnection conn = new SqlConnection(DBConnection.connectionstring);
            string query = "select * from menus ";
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(query, conn);
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }
        private Boolean saveMeal(string title, string category, string unit, string price, string qty, string link, string description, string dom, string doe, string status, string approvedBy)
        {
            string query = "insert into menus(title,category,unit,price,qty,photo,description,DateOfManufacturing,DateOfExpiry,status,MarkedBy) values ('" + title + "','" + category + "','" + unit + "','" + price + "','" + qty + "','" + link+ "','" + description + "','" + dom + "','" + doe + "','" + status + "','" + approvedBy + "')";
            SqlConnection conn = new SqlConnection(DBConnection.connectionstring);
            SqlCommand sqlCmd = new SqlCommand(query, conn);
            conn.Open();
            sqlCmd.ExecuteNonQuery();// insertion into table
            conn.Close();
            return true;
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminMenue.aspx");
            showMenu();
        }
    }
}