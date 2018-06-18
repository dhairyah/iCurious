<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ArticleSubmit.aspx.cs" Inherits="ArticleSubmit" validateRequest="false" Debug="true" %>
<%@ Register Assembly="FreeTextBox" Namespace="FreeTextBoxControls" TagPrefix="FTB" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
    body
{


} 
</style>
 <script type="text/javascript">
     function validate() {
         var doc = document.getElementById('FreeTextBox1');
         if (doc.value.length == 0) {
             alert('Please Enter data in textbox');
             return false;
         }
     }
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div>
<center>
<h4>Write A Blog</h4>

 <table>
    <tr>
    <td><b>Blog Title :</b></td>
    <td>
        <asp:TextBox ID="txtName" size="20" runat="server"></asp:TextBox></td>
    </tr>
    
   
    <tr>
     <td><b>Category :</b> </td>
     <td> 
         
         <asp:DropDownList ID="DropDownList1" runat="server" 
             DataSourceID="SqlDataSource1" DataTextField="int_name" DataValueField="int_name">
         </asp:DropDownList>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
             ConnectionString="<%$ ConnectionStrings:ddcurious2 %>" 
             SelectCommand="SELECT [int_name], [int_name] FROM [Interests]">
         </asp:SqlDataSource>
         
     </td>
    </tr>
    </table>
   <br />
    <table>
    <tr>
<td>
<FTB:FreeTextBox ID="FreeTextBox1" runat="server" Width="700px" Height="169px">
</FTB:FreeTextBox>
</td>
<td valign="top">

</td>
</tr>
   
    </table>
    <br />
   
 

<asp:Button ID="btnSubmit" runat="server" OnClientClick="return validate()" 
Text="Submit Blog" onclick="btnSubmit_Click" Height="30px" Width="117px" /><br />
<asp:Label ID="lbltxt" runat="server"/><br />
</center>
</div>
</asp:Content>

