<%@ Page Title="" Language="C#" Debug="true" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Bookmark.aspx.cs" Inherits="Bookmark" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
    body
{
background-image:url('ss.jpg');

} 
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<center>
<br />

<br />
<h1>Share A Website</h1>


<br />
<br />
 <table>
    <tr>
    <td><b>Website Name :</b></td>
    <td>
        <asp:TextBox ID="txtName" size="30" runat="server"></asp:TextBox></td>
    </tr>
    
    <tr>
    <td><b>WebSite URL  :</b></td>
    <td>
        <asp:TextBox ID="txtURL" size="30" runat="server"></asp:TextBox></td>
    </tr>
    <tr>
     <td><b>Category Of Interest :</b> </td>
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
    <br />
    <p />
    <asp:Button ID="btnAdd" runat="server" Text="Add Website" onclick="btnAdd_Click" 
             />
    <p />
    
    <asp:Label ID="lblMsg" runat="server" Text="" EnableViewState ="false"></asp:Label>
    </center>
</asp:Content>

