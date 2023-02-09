<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_CustomerAttendance.aspx.cs" Inherits="ShaistaFinalProject.Admin_CustomerAttendance" %>

<!DOCTYPE html>
<html>
<head>
   <title></title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="StyleSheet1.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style2 {
            font-size: large;
            text-align: center;
            width: 7px;
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
      <li><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Admin.aspx">Admin</asp:HyperLink></li>
      <li><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Admin_ManagerRegistration.aspx">Manager Registration</asp:HyperLink></li>
      <li>
          <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Admin_CustomerAttendance.aspx">Customer Attendance</asp:HyperLink></li>

         <li><asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/Admin_ManagerRegistration.aspx">Manage Menus</asp:HyperLink></li>
        <li><asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/AdminReports.aspx">Reports</asp:HyperLink></li>
      <li>
          <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Logout.aspx">Logout</asp:HyperLink></li>
    </ul>
  </div>

  <div class="col-6 col-s-9">
  
 
        
            <br />
    <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>Breakfast</asp:ListItem>
            <asp:ListItem>Lunch</asp:ListItem>
            <asp:ListItem>Dinner</asp:ListItem>
        </asp:DropDownList>

        &nbsp;&nbsp;&nbsp;

        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Next" Width="41px" />
            <br />
            <strong>
                <asp:Label ID="Label2" runat="server" Text="Label" CssClass="auto-style2"></asp:Label>
            </strong>
        <br />

    
    
            <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="email" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="email" HeaderText="email" ReadOnly="True" SortExpression="email" />
                <asp:BoundField DataField="cnic" HeaderText="cnic" SortExpression="cnic" />
                <asp:BoundField DataField="userType" HeaderText="userType" SortExpression="userType" />
                <asp:TemplateField HeaderText="Status">
                    <ItemTemplate>
                        <asp:RadioButton ID="RadioButton1" runat="server" Checked="True" GroupName="g1" Text="Present" />
                        <asp:RadioButton ID="RadioButton2" runat="server" GroupName="g1" Text="Absent" />
                    </ItemTemplate>
                </asp:TemplateField>
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
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ShaistaFinalDBConnectionString %>" SelectCommand="SELECT DISTINCT [name], [email], [cnic], [userType] FROM [users] WHERE ([userType] = @userType)">
            <SelectParameters>
                <asp:Parameter DefaultValue="Customer" Name="userType" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>


            <asp:Button ID="Button1" runat="server" Text="Save Atendace" OnClick="Button1_Click" />
        
        
  </div>
</div>
        <div class="row">

<div class="footer">
  <p>
       Shaista Jabeen (MC190404489)
       </div>
    </div>
        </form>
</body>
</html>


