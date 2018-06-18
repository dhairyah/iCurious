<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ShowBlog.aspx.cs" Inherits="ShowBlog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
      body  {
    background-image:url('blg.jpg');

    } 
        .style3
        {
            width: 280px;
            padding-left:40px;
           
        }
      
        .titl
        {
            color:#0073c5;
             font-weight:bold;
             font-family:Helvetica;
             font-size: 25px;
        }
        .tt
        {
            font-weight:bold;
             font-family: Papyrus;
             font-size: 30px;
        }
        
            
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    
  <div class="tt" align="center"><asp:Label ID="Label5" runat="server" CssClass="Label" ForeColor="Black"></asp:Label></div>
  <br />
  <br />
    <table border="2">
        <tr>
            <td class="style3" valign="top" align="left">
           <br />

           
            <div class="titl">Blog Title :</div>
            <asp:Label ID="Label1" runat="server" CssClass="Label" ForeColor="Black"></asp:Label><br /><br />
          <div class="titl">Author :</div>
          <asp:Label ID="Label2" runat="server" CssClass="Label" ForeColor="Black"></asp:Label><br /><br />
          <div class="titl">Category :</div>
            <asp:Label ID="Label3" runat="server" CssClass="Label" ForeColor="Black"></asp:Label><br /><br />
           <div class="titl"> Date :</div>
            <asp:Label ID="Label4" runat="server" CssClass="Label" ForeColor="Black"></asp:Label><br /><br />
            <u><a href="Bloglist.aspx" style="color:#000;">Go Back</a></u></div>
                </td>
               
            <td valign="top">
            <br />
                <asp:Label ID="lblMsg" runat="server" CssClass="Label" ForeColor="Black"></asp:Label>
            </td>
        </tr>
    </table>

    

</asp:Content>


