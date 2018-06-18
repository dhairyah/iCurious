<%@ Page Language="C#" AutoEventWireup="true" CodeFile="JoinIn.aspx.cs" Inherits="_JoinIn" Debug="true" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>iCURIOUS | Sign-Up</title>
    <style type="text/css">
         body
        {
            background-repeat:no-repeat;
            background-position:top;
            background-color:Black;
        }
         
        .foot
        {
            float:left;
            font:menu;
            padding-top:618px;
        }
      
            
        .join
         {  
             font-size:20px; 
              padding-top:10px;
             float:right;
             padding-top:40px;
            
        }    
       
        a
        {
            
            font-family:Helvetica;
            text-decoration:none;
            color:White;
        }
        
            
    </style>
</head>
<body background="loginbroadj.jpg">




    <form id="form2" runat="server">
    <div>
    <div class="join"><a href="Default.aspx"><b>Already Have An Account</b></a></div>
<div class="foot"><a href="#">Credits</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="#">About</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="#">Terms</a></div>
   
   <div align="center" style="padding-right:180px; font-family:Helvetica">

   </br>
   </br>
      <br />
       <br />
       <br />
    <br />
     <br />
      <br />
       <br />
       <br />
      <br />
       <br />
   
    <table border="1" cellpadding="3" cellspacing="1" style="width: 30%" align="center">
            <tr>
                <td colspan="2"><div align="center"><b> &nbsp; User Registration Form</b></div></td>
            </tr>
            <tr>
                <td colspan="2" valign="top">
                    <table style="width: 100%">
                        <tr>
                            <td align="left" width="30%">
                                First Name:</td>
                            <td align="left" width="50%">
                                <asp:TextBox ID="txtFirstName" runat="server" MaxLength="50"></asp:TextBox></td>
                            <td align="left" width="20%">
                                <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" ControlToValidate="txtFirstName"
                                    ErrorMessage="First Name can't be left blank" SetFocusOnError="True">*</asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td align="left" width="30%">
                                Last Name:</td>
                            <td align="left" width="50%">
                                <asp:TextBox ID="txtLastName" runat="server" MaxLength="50"></asp:TextBox></td>
                            <td align="left" width="20%">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtLastName"
                                    ErrorMessage="Last Name can't be left blank" SetFocusOnError="True">*</asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td align="left" width="30%">
                                UserName:</td>
                            <td align="left" width="50%">
                                <asp:TextBox ID="txtUserName" runat="server" MaxLength="12"></asp:TextBox></td>
                            <td align="left" width="20%">
                                <asp:RequiredFieldValidator ID="rfvUserName" runat="server" ControlToValidate="txtUserName"
                                    ErrorMessage="UserName can't be left blank" SetFocusOnError="True">*</asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td align="left" width="30%">
                                Password:</td>
                            <td align="left" width="50%">
                                <asp:TextBox ID="txtPwd" runat="server" MaxLength="15" TextMode="Password"></asp:TextBox></td>
                            <td align="left" width="20%">
                                <asp:RequiredFieldValidator ID="rfvPwd" runat="server" ControlToValidate="txtPwd"
                                    ErrorMessage="Password can't be left blank" SetFocusOnError="True">*</asp:RequiredFieldValidator></td>
                        </tr>
                        <tr>
                            <td align="left" width="30%">
                                Confirm Password:</td>
                            <td align="left" width="50%">
                                <asp:TextBox ID="txtRePwd" runat="server" MaxLength="15" 
                                    CssClass="TextinputText" TextMode="Password"></asp:TextBox></td>
                            <td align="left" width="20%">
                                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                    ControlToCompare="txtRePwd" ControlToValidate="txtPwd" 
                                    Operator="Equal" ErrorMessage="Password dont match" 
                                    SetFocusOnError="True"></asp:CompareValidator>
                            </td>
                        </tr>
                      
                        
                        <tr>
                            <td align="left" width="30%">
                                Email ID:</td>
                            <td align="left" width="50%">
                                <asp:TextBox ID="txtEmailID" runat="server" MaxLength="70" ></asp:TextBox></td>
                            <td align="left" width="20%">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmailID"
                                    ErrorMessage="Email can't be left blank" SetFocusOnError="True">*</asp:RequiredFieldValidator></td>
                        </tr> 
                    </table>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <table style="width: 100%" class="Table">
                        <tr>
                            <td>
                                <asp:Label ID="lblMsg" runat="server" CssClass="Label" Font-Bold="True" 
                                    ForeColor="Black"></asp:Label></td>
                            <td>
                                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True"
                                    ShowSummary="False" />
                            </td>
                        </tr>
                        <tr>
                            <td align="right" colspan="2">
                                <asp:Button ID="btnSave" runat="server" Text="Sign Up" CssClass="Button" 
                                    onclick="btnSave_Click"  /></td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div></div>
    </form>
</body>
</html>
