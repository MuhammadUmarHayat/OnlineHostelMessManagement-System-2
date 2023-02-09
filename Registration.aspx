<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="ShaistaFinalProject.Registration" %>

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
            height: 22px;
        }
        .auto-style5 {
            width: 7px;
            height: 22px;
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
              <td class="auto-style1" colspan="2"><strong>Customer Registration</strong></td>
              <td class="auto-style2">&nbsp;</td>
          </tr>
          <tr>
              <td> Enter Name</td>
              <td>
                  <asp:TextBox ID="txtNmae" runat="server"></asp:TextBox>
              </td>
              <td class="auto-style3">
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNmae" ErrorMessage="*"></asp:RequiredFieldValidator>
              </td>
          </tr>
          <tr>
              <td>Enter your email</td>
              <td>
                  <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox> 
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Formate not corract" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
              </td>
              <td class="auto-style3">
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmail" ErrorMessage="*"></asp:RequiredFieldValidator>
              </td>
          </tr>
          <tr>
              <td>Enter your password</td>
              <td> <asp:TextBox ID="txtPw" runat="server" TextMode="Password"></asp:TextBox></td>
              <td class="auto-style3"> 
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPw" ErrorMessage="*"></asp:RequiredFieldValidator>
              </td>
          </tr>
          <tr>
              <td>Enter password again</td>
              <td> 
                  <asp:TextBox ID="txtRPw" runat="server" TextMode="Password"></asp:TextBox>
                  <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPw" ControlToValidate="txtRPw" ErrorMessage="Not matched"></asp:CompareValidator>
              </td>
              <td class="auto-style3"> 
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtRPw" ErrorMessage="*"></asp:RequiredFieldValidator>
              </td>
          </tr>
          <tr>
              <td>Enter CNIC</td>
              <td> 
                  <asp:TextBox ID="txtCnic" runat="server" TextMode="Number"></asp:TextBox>
              </td>
              <td class="auto-style3"> 
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtCnic" ErrorMessage="*"></asp:RequiredFieldValidator>
              </td>
          </tr>
          <tr>
              <td>Enter Mobile No</td>
              <td> 
                  <asp:TextBox ID="txtMobileNo" runat="server" TextMode="Number"></asp:TextBox>
              </td>
              <td class="auto-style3"> 
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtMobileNo" ErrorMessage="*"></asp:RequiredFieldValidator>
              </td>
          </tr>
          <tr>
              <td>Enter address</td>
              <td> 
                  <asp:TextBox ID="txtAddress" runat="server" Height="62px" TextMode="MultiLine" Width="291px"></asp:TextBox>
              </td>
              <td class="auto-style3"> 
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtAddress" ErrorMessage="*"></asp:RequiredFieldValidator>
              </td>
          </tr>
          <tr>
              <td class="auto-style4"></td>
              <td class="auto-style4"> </td>
              <td class="auto-style5"> 
              </td>
          </tr>
          <tr>
              <td>&nbsp;</td>
              <td> &nbsp;</td>
              <td class="auto-style3"> 
                  &nbsp;</td>
          </tr>
          <tr>
              <td>&nbsp;</td>
              <td>
                  <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Register Now" />
              &nbsp;<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Cancel" CausesValidation="False" />
              </td>
              <td class="auto-style3">&nbsp;</td>
          </tr>
          <tr>
              <td>&nbsp;</td>
              <td>
                  <strong>
                  <asp:Label ID="Label1" runat="server"></asp:Label>
                  </strong>
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


