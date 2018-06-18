using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Bookmark : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        string connectionString = ConfigurationManager.ConnectionStrings["ddCurious2"].ConnectionString;
        SqlConnection con = new SqlConnection(connectionString);
       
        string insertSql = "INSERT INTO Bookmarks (Title,int,Username,url,date) values (@Title,@intid,@username,@url,getdate())";
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = insertSql;

        SqlParameter titb = new SqlParameter("@Title", SqlDbType.VarChar, 50);
        titb.Value = txtName.Text;
        cmd.Parameters.Add(titb);

        SqlParameter intidb = new SqlParameter("@intid", SqlDbType.VarChar, 50);
        intidb.Value = DropDownList1.SelectedItem.Value;
        cmd.Parameters.Add(intidb);

        SqlParameter userName = new SqlParameter("@Username", SqlDbType.VarChar, 50);
        userName.Value = Session["uname"].ToString();
        cmd.Parameters.Add(userName);

        SqlParameter url = new SqlParameter("@url", SqlDbType.VarChar, 50);
        url.Value = txtURL.Text;
        cmd.Parameters.Add(url);

      

        
        try
        {

            con.Open();
            
            cmd.ExecuteNonQuery();
            lblMsg.Text = "Website has been added successfully!";
           
        }
        catch (Exception ex)
        {
            HttpContext.Current.Trace.Write(ex.Message);
            lblMsg.Text = "Website could not be added";
            
            
        }
        finally
        {
            if (con.State == ConnectionState.Open)
                con.Close();
        }

        

    }

    private void ClearControls(Page Page)
    {
        throw new NotImplementedException();
    }
}
