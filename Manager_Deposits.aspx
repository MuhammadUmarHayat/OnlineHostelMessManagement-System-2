<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Manager_Deposits.aspx.cs" Inherits="ShaistaFinalProject.Manager_Deposits" %>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="StyleSheet1.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            color: #660066;
        }
          .auto-style4 {
              width: 50%;
              height: 36px;
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



      <table align="center" class="auto-style4">
          <tr>
              <td>Select User</td>
              <td>
                  <asp:DropDownList ID="ddlUserID" runat="server">
                  </asp:DropDownList>
                  <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Show " />
              </td>
              <td>&nbsp;</td>
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
              <td>&nbsp;</td>
          </tr>
          <tr>
              <td>Payment</td>
              <td>
                  <asp:TextBox ID="TextBox1" runat="server" TextMode="Number"></asp:TextBox>
              </td>
              <td>&nbsp;</td>
          </tr>
          <tr>
              <td>Type</td>
              <td>
                  <asp:DropDownList ID="DropDownList1" runat="server">
                      <asp:ListItem>Advance</asp:ListItem>
                      <asp:ListItem>Cash</asp:ListItem>
                      <asp:ListItem>Others</asp:ListItem>
                  </asp:DropDownList>
              </td>
              <td>&nbsp;</td>
          </tr>
          <tr>
              <td><strong>
                  <asp:Label ID="Label2" runat="server" CssClass="auto-style5"></asp:Label>
                  </strong></td>
              <td>
                  <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Save" />
                  &nbsp;<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Cancel" />
              </td>
              <td>&nbsp;</td>
          </tr>
      </table>



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


