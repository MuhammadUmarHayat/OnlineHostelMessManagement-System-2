<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Manager_CustomerOrders.aspx.cs" Inherits="ShaistaFinalProject.Manager_CustomerOrders" %>

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
              width: 47%;
              height: 91px;
          }
          .auto-style5 {
            width: 68px;
        }
        .auto-style6 {
            width: 141px;
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
              <td class="auto-style6">Select&nbsp; userid</td>
              <td>
                  <asp:DropDownList ID="ddlUserID" runat="server">
                  </asp:DropDownList>
              </td>
              <td>&nbsp;</td>
          </tr>
          <tr>
              <td class="auto-style6">Select category</td>
              <td>
                  <asp:DropDownList ID="ddlCategory" runat="server">
                  </asp:DropDownList>
              </td>
              <td>
                  <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Next" />
              </td>
          </tr>
          <tr>
              <td class="auto-style6">&nbsp;</td>
              <td>
                  <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" Height="129px" OnItemCommand="DataList1_ItemCommand" RepeatDirection="Horizontal" Width="1164px">
                      <AlternatingItemStyle BackColor="#DCDCDC" />
                      <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                      <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                      <ItemStyle BackColor="#EEEEEE" ForeColor="Black" />
                      <ItemTemplate>
                          <table class="auto-style5">
                              <tr>
                                  <td colspan="4">
                                      <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("photo") %>' />
                                  </td>
                              </tr>
                              <tr>
                                  <td>
                                      <asp:Label ID="Label2" runat="server" Text='<%# Eval("title") %>'></asp:Label>
                                  </td>
                                  <td>
                                      <asp:Label ID="Label3" runat="server" Text='<%# Eval("unit") %>'></asp:Label>
                                  </td>
                                  <td>
                                      <asp:Label ID="Label4" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                                  </td>
                                  <td>&nbsp;</td>
                              </tr>
                              <tr>
                                  <td>&nbsp;</td>
                                  <td>
                                      <asp:DropDownList ID="DropDownList1" runat="server">
                                          <asp:ListItem>1</asp:ListItem>
                                          <asp:ListItem>2</asp:ListItem>
                                          <asp:ListItem>3</asp:ListItem>
                                          <asp:ListItem>4</asp:ListItem>
                                          <asp:ListItem>5</asp:ListItem>
                                      </asp:DropDownList>
                                  </td>
                                  <td>&nbsp;</td>
                                  <td>&nbsp;</td>
                              </tr>
                              <tr>
                                  <td>&nbsp;</td>
                                  <td>
                                      <asp:ImageButton ID="ImageButton1" runat="server" CommandArgument='<%# Eval("id")%>' CommandName="orderNow" Height="50px" ImageUrl="~/images/ordernow.png" Width="100px" />
                                  </td>
                                  <td>&nbsp;</td>
                                  <td>&nbsp;</td>
                              </tr>
                          </table>
                      </ItemTemplate>
                      <SelectedItemStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                  </asp:DataList>
              </td>
              <td>&nbsp;</td>
          </tr>
          <tr>
              <td class="auto-style6">&nbsp;</td>
              <td>&nbsp;</td>
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


