<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminReports.aspx.cs" Inherits="ShaistaFinalProject.AdminReports" %>

<!DOCTYPE html>
<html>
<head>
   <title></title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="StyleSheet1.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            font-size: large;
            text-align: center;
        }
        .auto-style2 {
            font-size: large;
            text-align: center;
            width: 7px;
        }
        .auto-style3 {
            width: 7px;
        }
        .auto-style4 {
            color: #0000FF;
        }
        .auto-style5 {
            color: #660066;
        }
        .auto-style6 {
            color: #6600CC;
        }
        .auto-style7 {
            color: #CC0000;
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
  
    
        <table align="center" class="col-s-12">
          <tr>
              <td class="auto-style1" colspan="2"><strong>
                  <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                  </strong></td>
              <td class="auto-style2">&nbsp;</td>
          </tr>
          <tr>
              <td> Total Managers</td>
              <td>
                  <strong>
                  <asp:Label ID="lblMgr" runat="server" CssClass="auto-style4"></asp:Label>
                  </strong>
              </td>
              <td class="auto-style3">
                  &nbsp;</td>
          </tr>
          <tr>
              <td> &nbsp;</td>
              <td>
                  &nbsp;</td>
              <td class="auto-style3">
                  &nbsp;</td>
          </tr>
          <tr>
              <td>Total Customers</td>
              <td>
                  <strong>
                  <asp:Label ID="lblCustomers" runat="server" CssClass="auto-style5"></asp:Label>
                  </strong>
              </td>
              <td class="auto-style3">
                  &nbsp;</td>
          </tr>
          <tr>
              <td>Total Menus</td>
              <td>
                  <strong>
                  <asp:Label ID="lblMenus" runat="server" CssClass="auto-style6"></asp:Label>
                  </strong>
              </td>
              <td class="auto-style3">
                  &nbsp;</td>
          </tr>
          <tr>
              <td>Total Payment Received </td>
              <td> 
                  <strong> 
                  <asp:Label ID="lblPayments" runat="server" CssClass="auto-style7"></asp:Label>
                  </strong>
              </td>
              <td class="auto-style3"> 
                  &nbsp;</td>
          </tr>
          <tr>
              <td>&nbsp;</td>
              <td>
                  &nbsp;</td>
              <td class="auto-style3">&nbsp;</td>
          </tr>
          <tr>
              <td>&nbsp;</td>
              <td>
                  Show Payments</td>
              <td class="auto-style3">&nbsp;</td>
          </tr>
          <tr>
              <td>&nbsp;</td>
              <td>
                  <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
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
              </td>
              <td class="auto-style3">&nbsp;</td>
          </tr>
          <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td class="auto-style3">&nbsp;</td>
          </tr>
      </table> 
  </div>

  </div>
         <div class="row">


<div class="footer">
  <p>
   

      Shaista Jabeen (MC190404489)</p>
</div>
</div>
    </form>

</body>
</html>


