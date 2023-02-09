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
    public partial class Manager_CustomerOrders : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email"] == null)
            {
                Response.Redirect("Logout.aspx");
            }
            
            bindUsers();
            bindCategory();
        }
        private void show(string category)
        {
            SqlConnection conn = new SqlConnection(DBConnection.connectionstring);

            string query = "select * from menus where category='" + category + "' ";

            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(query, conn);
            da.Fill(dt);
            DataList1.DataSource = dt;
            DataList1.DataBind();

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
        private void bindCategory()
        {
            SqlConnection conn = new SqlConnection(DBConnection.connectionstring);

            string query = "select category from menus ";

            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(query, conn);
            da.Fill(dt);

            if (dt.Rows.Count > 0)
            { // bind domain with the dropdownlist
                ddlCategory.DataTextField = "category";
                ddlCategory.DataValueField = "category";
                ddlCategory.DataSource = dt;
                ddlCategory.DataBind();
            }


        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string category = ddlCategory.Text;
            show(category);

        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (IsPostBack)
            {
                if (e.CommandName == "orderNow")
                {
                    string id = e.CommandArgument.ToString();
                    DropDownList dlist = (DropDownList)(e.Item.FindControl("DropDownList1"));
                    getMealInfo(id);
                    string userid; string meal; string unit; string qty; string price; string total; string payment; string date; string isPaid; string receivedBy; string status;
                    userid = ddlUserID.SelectedValue.ToString();
                    meal = Session["meal"].ToString();
                    unit = Session["unit"].ToString();
                    qty = dlist.SelectedItem.ToString();
                    price = Session["price"].ToString();
                    int t = Convert.ToInt32(qty) * Convert.ToInt32(price);
                    total = t.ToString();
                    payment = total;
                    date = DateTime.Now.ToString();
                    isPaid = "not";
                    receivedBy = "";
                    status = "not paid";

                    saveShopping(meal, qty, unit, price, date, userid,status);
                    
                    Session["customer"] = userid;

                    Response.Redirect("Manager_CustomerPayment.aspx");

                }


            }
        }
        public Boolean saveShopping(string meal, string qty, string unit, string price, string date, string userid,string status)
        {
            string query = "insert into Customer_Shoppings(customerId,meal,qty,unit,price,date,status) values ('" + userid + "','" + meal + "','" + qty + "','" + unit + "','" + price + "','" + date + "','" + status + "')";
            SqlConnection conn = new SqlConnection(DBConnection.connectionstring);
            SqlCommand sqlCmd = new SqlCommand(query, conn);
            conn.Open();
            sqlCmd.ExecuteNonQuery();// insertion into db
            conn.Close();

            return true;
        }
        private void getMealInfo(string id)
        {

            SqlConnection conn = new SqlConnection(DBConnection.connectionstring);

            string query = "select * from menus where id='"+id+"' ";

            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(query, conn);
            da.Fill(dt);

                      if (dt.Rows.Count > 0)
            {
                string mealTitle = dt.Rows[0]["title"].ToString();
                string mealUnit = dt.Rows[0]["unit"].ToString();
                string mealPrice = dt.Rows[0]["price"].ToString();
                Session["meal"] = mealTitle;
                Session["unit"] = mealUnit;
                Session["price"] = mealPrice;

            }

        }




    }
}