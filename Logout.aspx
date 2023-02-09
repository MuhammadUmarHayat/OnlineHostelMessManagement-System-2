<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Logout.aspx.cs" Inherits="ShaistaFinalProject.Logout" %>

<!DOCTYPE html>
<html>
<head>
   <title></title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="StyleSheet1.css" rel="stylesheet" />
    </head>
<body>

    <form id="form1" runat="server">

<div class="header">
  <h1>Online Hostel Mess Management</h1>
</div>

<div class="row">
  <div class="col-3 col-s-3 menu">
    <ul>
      
         <li> <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Login.aspx">Login</asp:HyperLink></li>
     </ul> 
  </div>

</div>
        <div class="row">
  <div class="col-6 col-s-9">
  <h2>Session Expire</h2>
      <p>Your session has been expired..........</p>
    
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


