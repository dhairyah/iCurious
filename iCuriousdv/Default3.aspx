<%@ Page Title="" Language="C#" Debug="true" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default3.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
    body
{
background-image:url('aa.jpg');

} 
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br />
<br />
<br />
<br />
    <center>
    <asp:CheckBoxList ID="CheckBoxList1" runat="server" 
        DataSourceID="SqlDataSource1" DataTextField="int_name" DataValueField="int_id" 
            RepeatColumns="3" RepeatDirection="Vertical" 
            onselectedindexchanged="CheckBoxList1_SelectedIndexChanged">
    </asp:CheckBoxList>
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ddcurious2 %>" 
        SelectCommand="SELECT * FROM [Interests]"></asp:SqlDataSource>
    <br />
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" 
            Height="49px" Width="120px" />
            <br />
    <br />
    <br /><asp:Label ID="lblMsg" runat="server" CssClass="Label" Font-Bold="True" 
                                    ForeColor="Red"></asp:Label>
                                    <br />
    <br />
           <asp:Label ID="lblMsg2" runat="server" CssClass="Label" Font-Bold="True" 
                                    ForeColor="Red"></asp:Label>
    </center>
</asp:Content>

