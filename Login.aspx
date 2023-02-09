<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ShaistaFinalProject.Login" %>

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
      <li><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/About.aspx">About</asp:HyperLink></li>
      <li><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/ContactUs.aspx">Contact Us</asp:HyperLink></li>
      <li>
          <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Login.aspx">Login</asp:HyperLink></li>
      <li>
          <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Registration.aspx">Register Now</asp:HyperLink></li>
    </ul>
  </div>

  <div class="col-6 col-s-9">
  
    
        <table align="center" class="col-s-12">
          <tr>
              <td class="auto-style1" colspan="2"><strong>Login</strong></td>
              <td class="auto-style2">&nbsp;</td>
          </tr>
          <tr>
              <td> choose user Type</td>
              <td>
                  <asp:DropDownList ID="DropDownList1" runat="server">
                      <asp:ListItem>Administrator</asp:ListItem>
                      <asp:ListItem>Manager</asp:ListItem>
                      <asp:ListItem>Customer</asp:ListItem>
                  </asp:DropDownList>
              </td>
              <td class="auto-style3">
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownList1" ErrorMessage="*"></asp:RequiredFieldValidator>
              </td>
          </tr>
          <tr>
              <td>Enter your email</td>
              <td>
                  <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Formate is not corract" ControlToValidate="TextBox1" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator> </td>
              <td class="auto-style3">
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="*"></asp:RequiredFieldValidator>
              </td>
          </tr>
          <tr>
              <td>Enter your password</td>
              <td> <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox></td>
              <td class="auto-style3"> 
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2" ErrorMessage="*"></asp:RequiredFieldValidator>
              </td>
          </tr>
          <tr>
              <td>&nbsp;</td>
              <td>
                  <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" Width="47px" />
              </td>
              <td class="auto-style3">&nbsp;</td>
          </tr>
          <tr>
              <td>&nbsp;</td>
              <td>
                  <asp:Label ID="Label1" runat="server"></asp:Label>
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


