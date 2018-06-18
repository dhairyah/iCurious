<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>iCURIOUS | Blogging Synopsis</title>
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
             font-size:30px; 
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
<body background="loginbroad.jpg">




    <form id="form1" runat="server">
    <div>
    <div class="join"><a href="JoinIn.aspx"><b>Join-In</b></a></div>
<div class="foot"><a href="#">Credits</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="#">About</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="#">Terms</a></div>
   
   <div align="center" style="padding-right:180px">
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
   <br />
   <br />
   <br />
   <br />
   <br />
   <br />
<asp:Login ID="Login1" runat="server" OnAuthenticate="Login1_Authenticate">
        <LayoutTemplate>
            <table cellpadding="1" cellspacing="0" style="border-collapse:collapse;">
                <tr>
                    <td>
                        <table cellpadding="10">
                            <tr>
                                <td align="center" colspan="2"></td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName" Width="200" style="font-size:20px; font-family:Helvetica">User Name :</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="UserName" runat="server" Width="180"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" 
                                        ControlToValidate="UserName" ErrorMessage="User Name is required." 
                                        ToolTip="User Name is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password" Width="200" style="font-size:20px; font-family:Helvetica">Password :</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="Password" runat="server" TextMode="Password"  Width="180"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" 
                                        ControlToValidate="Password" ErrorMessage="Password is required." 
                                        ToolTip="Password is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                         <!--   <tr>
                                <td colspan="2">
                                    <asp:CheckBox ID="RememberMe" runat="server" Text="Remember me next time." />
                                </td>
                            </tr> -->
                            <tr>
                                <td align="center" colspan="2" style="color:Red;">
                                    <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2">
                                    <asp:Button ID="LoginButton" runat="server" CommandName="Login" Text="Log In" 
                                        ValidationGroup="Login1" Height="38px" Width="72px" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
    </asp:Login>
    
    </div>


    
    </div>
    </form>
    
</body>
</html>
