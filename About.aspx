<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="ShaistaFinalProject.About" %>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="StyleSheet1.css" rel="stylesheet" />
</head>
<body>

<div class="header">
  <h1>Online Hostel Mess Management</h1>
</div>

<div class="row">
  <div class="col-3 col-s-3 menu">
    <ul>
      <li><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/About.aspx">About</asp:HyperLink></li>
      <li><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/ContactUs.aspx">Contact Us</asp:HyperLink></li>
      <li>
          <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Login.aspx">Login</asp:HyperLink></li>
      <li>
          <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Registration.aspx">Register Now</asp:HyperLink></li>
    </ul>
  </div>

  <div class="col-6 col-s-9">
    <h1>Online Hostel Mess Management</h1>
    <p>Online Hostel Mess Management is a web application which aids three types of users i.e. administrator, mess manager and mess user.
Administrator is playing the key role in this context. Admin intends to monitor each and every activity of this application. Admin will govern users. Admin will govern menu. Admin will be able to generate different kinds of reports. Our application will provide login interface for each user.
</p>
      <p>
Mess manager will display the menu. Mess manager will manage the registered user’s deposit. Mess manager will check the registered user attendance. Registered user will check his attendance. Mess manager will check user’s remaining amount. Registered user will check his remaining amount. Registered user will view menu. Registered user will order meal. Registered user will give feedback of the current order. System will generate reports for mess manager monthly and annually.

      </p>
  </div>
    </div>
     <div class="row">
  


<div class="footer">
  <p>Shaista Jabeen (MC190404489)</p>
</div>
</div>
</body>
</html>


