using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Bloglist : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
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
            SqlDataAdapter adp = new SqlDataAdapter("select Title,Username,date,int,('Showblog.aspx?blog_id='+convert(varchar(50),article_id)) as Url from Articles where int in (select int_name from Interests where int_id in (select int_id from Users_Interests where Username = '" + Session["uname"] + "'))", con);
            SqlParameter userName = new SqlParameter("@uu", SqlDbType.VarChar, 50);
            userName.Value = Session["uname"].ToString();

            adp.Fill(dt);
            dlEmployee.DataSource = dt;
            dlEmployee.DataBind();
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

    protected void Button1_Click(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ddcurious2"].ConnectionString);
        try
        {
            SqlDataAdapter adp = new SqlDataAdapter("select * from Articles where int = '" + DropDownList1.SelectedValue + "'", con);
            SqlParameter userName = new SqlParameter("@uu", SqlDbType.VarChar, 50);
            userName.Value = Session["uname"].ToString();

            adp.Fill(dt);

            dlEmployee.DataSource = dt;
            dlEmployee.DataBind();
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


    protected void Button2_Click(object sender, EventArgs e)
    {


        BindDataList();
    }
}