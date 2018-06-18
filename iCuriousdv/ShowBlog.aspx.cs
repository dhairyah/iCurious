using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class ShowBlog : System.Web.UI.Page
{
    String s;
    protected void Page_Load(object sender, EventArgs e)
    {
        s = Request.QueryString["blog_id"];
        if (!Page.IsPostBack)
        {
        
            BindDataList();
        }
    }
    protected void BindDataList()
    {

        DataTable dt = new DataTable();
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ddcurious2"].ConnectionString);
        try
        {
            SqlDataAdapter adp = new SqlDataAdapter("select article,Title,Username,int,Date from Articles where article_id ="+ s,con);
            

            adp.Fill(dt);
            lblMsg.Text = dt.Rows[0][0].ToString();
            Label1.Text = dt.Rows[0][1].ToString();
            Label2.Text = dt.Rows[0][2].ToString();
            Label3.Text = dt.Rows[0][3].ToString();
            Label4.Text = dt.Rows[0][4].ToString();
            Label5.Text = dt.Rows[0][1].ToString();
               
           
            
        }
        catch (Exception ex)
        {
            Response.Write("Error occured: " + ex.Message.ToString());
        }
        finally
        {
            dt.Clear();
            dt.Dispose();
            con.Close();
        }
    }
}