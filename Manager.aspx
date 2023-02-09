<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Manager.aspx.cs" Inherits="ShaistaFinalProject.Manager" %>

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




      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
          <Columns>
              <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
              <asp:BoundField DataField="category" HeaderText="category" SortExpression="category" />
              <asp:BoundField DataField="unit" HeaderText="unit" SortExpression="unit" />
              <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
              <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
              <asp:BoundField DataField="qty" HeaderText="qty" SortExpression="qty" />
              <asp:BoundField DataField="DateOfManufacturing" HeaderText="DateOfManufacturing" SortExpression="DateOfManufacturing" />
              <asp:BoundField DataField="DateOfExpiry" HeaderText="DateOfExpiry" SortExpression="DateOfExpiry" />
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

      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ShaistaFinalDBConnectionString %>" SelectCommand="SELECT DISTINCT [title], [category], [unit], [price], [description], [qty], [DateOfManufacturing], [DateOfExpiry] FROM [menus]"></asp:SqlDataSource>

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


