<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminMenue.aspx.cs" Inherits="ShaistaFinalProject.AdminMenue" %>

<!DOCTYPE html>
<html>
<head>
   <title></title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="StyleSheet1.css" rel="stylesheet" />
    <style type="text/css">
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
            font-size: large;
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
  
    <h2>Admin Manage Menu</h2>

      <strong>

      <asp:Label ID="Label1" runat="server" Text="Label" CssClass="auto-style6"></asp:Label>  
      </strong>  
      <table align="center" class="auto-style4">
          <tr>
              <td>Enter title</td>
              <td>
                  <asp:TextBox ID="txtTitle" runat="server"></asp:TextBox>
              </td>
              <td>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTitle" ErrorMessage="*"></asp:RequiredFieldValidator>
              </td>
          </tr>
          <tr>
              <td>Choose category</td>
              <td>
                  <asp:DropDownList ID="ddlCategory" runat="server">
                      <asp:ListItem>Fast Food</asp:ListItem>
                      <asp:ListItem>Chicken</asp:ListItem>
                      <asp:ListItem>Mutton</asp:ListItem>
                      <asp:ListItem>Beef</asp:ListItem>
                      <asp:ListItem>Drink</asp:ListItem>
                      <asp:ListItem>Tea</asp:ListItem>
                      <asp:ListItem>Cofee</asp:ListItem>
                      <asp:ListItem>Kahwa</asp:ListItem>
                      <asp:ListItem>Chapati</asp:ListItem>
                      <asp:ListItem>Nan</asp:ListItem>
                      <asp:ListItem>Raita</asp:ListItem>
                      <asp:ListItem>Salad</asp:ListItem>
                  </asp:DropDownList>
              </td>
              <td>&nbsp;</td>
          </tr>
          <tr>
              <td>Enter size</td>
              <td>
                  <asp:TextBox ID="txtUnit" runat="server"></asp:TextBox>
              </td>
              <td>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtUnit" ErrorMessage="*"></asp:RequiredFieldValidator>
              </td>
          </tr>
          <tr>
              <td>Enter unit Price</td>
              <td>
                  <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
              </td>
              <td>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPrice" ErrorMessage="*"></asp:RequiredFieldValidator>
              </td>
          </tr>
          <tr>
              <td>Enter Quantity</td>
              <td>
                  <asp:TextBox ID="txtQty" runat="server" TextMode="Number"></asp:TextBox>
              </td>
              <td>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtQty" ErrorMessage="*"></asp:RequiredFieldValidator>
              </td>
          </tr>
          <tr>
              <td>photo </td>
              <td>
                  <asp:FileUpload ID="FileUpload1" runat="server" />
              </td>
              <td>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="FileUpload1" ErrorMessage="*"></asp:RequiredFieldValidator>
              </td>
          </tr>
          <tr>
              <td>Enter Description</td>
              <td>
                  <asp:TextBox ID="txtDescription" runat="server" CssClass="auto-style5" Height="78px" TextMode="MultiLine" Width="280px"></asp:TextBox>
              </td>
              <td>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtDescription" ErrorMessage="*"></asp:RequiredFieldValidator>
              </td>
          </tr>
          <tr>
              <td>Date of manufecturing</td>
              <td>
                  <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="250px" NextPrevFormat="ShortMonth" OnSelectionChanged="Calendar1_SelectionChanged" Width="330px">
                      <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" Height="8pt" />
                      <DayStyle BackColor="#CCCCCC" />
                      <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
                      <OtherMonthDayStyle ForeColor="#999999" />
                      <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                      <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" Font-Size="12pt" ForeColor="White" Height="12pt" />
                      <TodayDayStyle BackColor="#999999" ForeColor="White" />
                  </asp:Calendar>
              </td>
              <td><strong>
                  <asp:Label ID="lblDOM" runat="server"></asp:Label>
                  </strong></td>
          </tr>
          <tr>
              <td>Date of expiry</td>
              <td>
                  <asp:Calendar ID="Calendar2" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" OnSelectionChanged="Calendar2_SelectionChanged" ShowGridLines="True" Width="220px">
                      <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                      <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                      <OtherMonthDayStyle ForeColor="#CC9966" />
                      <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                      <SelectorStyle BackColor="#FFCC66" />
                      <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                      <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                  </asp:Calendar>
              </td>
              <td><strong>
                  <asp:Label ID="lblDOE" runat="server"></asp:Label>
                  </strong></td>
          </tr>
          <tr>
              <td><strong>
                  <asp:Label ID="Label2" runat="server" CssClass="auto-style3"></asp:Label>
                  </strong></td>
              <td>
                  <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Save" />
                  &nbsp;&nbsp;
                  <asp:Button ID="Button2" runat="server" CausesValidation="False" OnClick="Button2_Click" Text="Cancel" />
              </td>
              <td>&nbsp;</td>
          </tr>
          <tr>
              <td>&nbsp;</td>
              <td>
                  <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
                      <AlternatingRowStyle BackColor="#F7F7F7" />
                      <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                      <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                      <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                      <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                      <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                      <SortedAscendingCellStyle BackColor="#F4F4FD" />
                      <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                      <SortedDescendingCellStyle BackColor="#D8D8F0" />
                      <SortedDescendingHeaderStyle BackColor="#3E3277" />
                  </asp:GridView>
              </td>
              <td>&nbsp;</td>
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


