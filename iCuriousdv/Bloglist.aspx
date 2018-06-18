<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Bloglist.aspx.cs" Inherits="Bloglist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
    body
{
background-image:url('art.jpg');

} 
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center><b>Category Of Interest :</b>
     
         
         <asp:DropDownList ID="DropDownList1" runat="server" 
             DataSourceID="SqlDataSource1" DataTextField="int_name" DataValueField="int_name" >
         </asp:DropDownList>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
             ConnectionString="<%$ ConnectionStrings:ddcurious2 %>" 
             SelectCommand="SELECT [int_name], [int_name] FROM [Interests]  where [int_id] in (SELECT [int_id] FROM [Users_Interests] where [Username] = @T)">
         
  <SelectParameters>
    <asp:SessionParameter Name="T" SessionField="uname" ConvertEmptyStringToNull="true" />
    </SelectParameters>
         </asp:SqlDataSource>
         <br />
         <br />
         

    <asp:Button ID="Button1" runat="server" Height="30px" onclick="Button1_Click" 
        Text="Filter Bookmarks" Width="123px" />
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button2" runat="server" Height="30px" Text="All Bookmarks" 
        Width="123px" onclick="Button2_Click" />
          </center>   
         <br />
         <br />
         
         <center>
          <fieldset style="width:250px;">
            <legend>List Of Bookmarks : </legend>
            
             
            <asp:DataList ID="dlEmployee" runat="server" CellPadding="4" ForeColor="#333333" RepeatColumns="3">
                
            <ItemTemplate>
            
                <table style="width:220px;" cellspacing="2" cellpadding="2">
                      <tr>
                        <td><b style="color:#0073c5;">Blog Title :</b><div class="bb"><a style="color:#000" href="<%#DataBinder.Eval(Container.DataItem, "Url")%>"> <%#DataBinder.Eval(Container.DataItem, "Title")%></div></td>
                      </tr>
                      <tr>
                        <td><b style="color:#0073c5;">Category :</b> <%#DataBinder.Eval(Container.DataItem, "int")%></td>
                      </tr>
                      <tr>
                        <td><b style="color:#0073c5;">Submitted By :</b> <%#DataBinder.Eval(Container.DataItem, "Username")%></td>
                      </tr>
                      <tr>
                        <td><b style="color:#0073c5;">Submitted At :</b> <%#DataBinder.Eval(Container.DataItem, "date")%></td>
                      </tr>
                      
                </table>
            </ItemTemplate>
                <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        </asp:DataList>
        </fieldset>
        </center>
</asp:Content>

