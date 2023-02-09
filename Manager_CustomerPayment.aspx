<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Manager_CustomerPayment.aspx.cs" Inherits="ShaistaFinalProject.Manager_CustomerPayment" %>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="StyleSheet1.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            color: #660066;
        }
    </style>
</head>
<body>

    <form id="form1" runat="server">

<div class="header">
  <h1>Online Hostel Mess Management</h1>
</div>
 <div class="row">

  <div class="col-3 col-s-3 menu">
    <ul>
      <li><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Manager.aspx">Manager</asp:HyperLink></li>
      <li><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Manager_CustomerOrders.aspx">Customer Orders</asp:HyperLink></li>
            <li><asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Manager_CustomerAttendance.aspx">Customer Attendance</asp:HyperLink></li>
               <li><asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Manager_Deposits.aspx">Deposits</asp:HyperLink></li>
         <li><asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Manager_ViewAttendance.aspx">View Attendance</asp:HyperLink></li>
        <li><asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/Manager_Reports.aspx">Reports</asp:HyperLink></li>
        <li><asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/Logout.aspx">Logout</asp:HyperLink></li>
    </ul>
  </div>

  <div class="col-6 col-s-9">
    <h1>Online Hostel Mess Management:<asp:Label ID="Label1" runat="server" CssClass="auto-style1" Text="Label"></asp:Label>
      </h1>

        <strong>

    
    
            <asp:Label ID="Label2" runat="server" CssClass="auto-style4"></asp:Label>


            </strong>


            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="customerId" HeaderText="customerId" SortExpression="customerId" />
                    <asp:BoundField DataField="meal" HeaderText="meal" SortExpression="meal" />
                    <asp:BoundField DataField="qty" HeaderText="qty" SortExpression="qty" />
                    <asp:BoundField DataField="unit" HeaderText="unit" SortExpression="unit" />
                    <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                    <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                </Columns>
                <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                <RowStyle BackColor="White" ForeColor="#003399" />
                <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                <SortedAscendingCellStyle BackColor="#EDF6F6" />
                <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                <SortedDescendingCellStyle BackColor="#D6DFDF" />
                <SortedDescendingHeaderStyle BackColor="#002876" />
            </asp:GridView>


            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ShaistaFinalDBConnectionString %>" SelectCommand="SELECT DISTINCT [customerId], [meal], [qty], [unit], [price], [date] FROM [Customer_Shoppings] WHERE ([customerId] = @customerId)"  UpdateCommand="update Customer_Shoppings set qty=@qty WHERE ([id] = @id)" DeleteCommand="delete from Customer_Shoppings WHERE ([id] = @id)">
                <SelectParameters>
                    <asp:SessionParameter Name="customerId" SessionField="customer" Type="String" />
                </SelectParameters>
      </asp:SqlDataSource>


           

            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Payment Now" />
            <strong><em>
            <asp:Label ID="Label3" runat="server" CssClass="auto-style5"></asp:Label>
            </em></strong>
            <br />
            <br />



      
</div>
</div>
  
         <div class="row">


<div class="footer">
  <p>Shaista Jabeen (MC190404489)</p>
</div>
</div>
    </form>

</body>
</html>


