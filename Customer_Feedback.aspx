﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Customer_Feedback.aspx.cs" Inherits="ShaistaFinalProject.Customer_Feedback" %>


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
      <li><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Customer.aspx">Customer</asp:HyperLink></li>
      <li><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Customer_Profile.aspx">Profile</asp:HyperLink></li>
      <li>
          <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Customer_History.aspx">Accounts History</asp:HyperLink></li>
        <li><asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Customer_Feedback.aspx">Send Feedback</asp:HyperLink></li>
      <li>
          <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Logout.aspx">Logout</asp:HyperLink></li>
    </ul>
  </div>

  <div class="col-6 col-s-9">
  <h2>Online Hostel Mess Management:<asp:Label ID="Label1" runat="server" CssClass="auto-style1" Text="Label"></asp:Label> </h2>
    <h3>Send Feedback</h3>

      <br />







      <table align="center" class="col-s-12">
          <tr>
              <td>Enter your message </td>
              <td>
                  <asp:TextBox ID="TextBox1" runat="server" Height="100px" TextMode="MultiLine" Width="266px"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*"></asp:RequiredFieldValidator>
              </td>
              <td>&nbsp;</td>
          </tr>
          <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
          </tr>
          <tr>
              <td>&nbsp;</td>
              <td>
                  <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Send" />
&nbsp;<asp:Button ID="Button2" runat="server" Text="Cancel" />
              </td>
              <td>&nbsp;</td>
          </tr>
          <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
          </tr>
          <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
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


