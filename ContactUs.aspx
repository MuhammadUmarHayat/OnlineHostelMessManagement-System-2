<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="ShaistaFinalProject.ContactUs" %>

<!DOCTYPE html>
<html>
<head>
   <title></title>
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
    <h1>Contact Us</h1>
    
        <table align="center" class="col-s-12">
          <tr>
              <td>Name</td>
              <td> Shaista Jabeen</td>
          </tr>
          <tr>
              <td> VU ID</td>
              <td>MC190404489</td>
          </tr>
          <tr>
              <td>Group Id</td>
              <td>S2202ADFE5</td>
          </tr>
          <tr>
              <td>Email</td>
              <td>MC190404489@vu.edu.pk</td>
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
</body>
</html>


