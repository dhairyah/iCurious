using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class ArticleSubmit : System.Web.UI.Page
{
    

    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ddCurious2"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        con.Open();

        SqlCommand cmd = new SqlCommand("INSERT INTO Articles (Title,Username,article,date,int) values (@tit,@User,@art,getdate(),@int)", con);
        
       
      

        SqlParameter titb = new SqlParameter("@tit", SqlDbType.VarChar, 50);
        titb.Value = txtName.Text;
        cmd.Parameters.Add(titb);

        SqlParameter intidb = new SqlParameter("@int", SqlDbType.VarChar, 50);
        intidb.Value = DropDownList1.SelectedItem.Value;
        cmd.Parameters.Add(intidb);

        SqlParameter userName = new SqlParameter("@User", SqlDbType.VarChar, 50);
        userName.Value = Session["uname"].ToString();
        cmd.Parameters.Add(userName);

        cmd.Parameters.AddWithValue("@art", FreeTextBox1.Text);

        cmd.ExecuteNonQuery();
        con.Close();
        FreeTextBox1.Text = "";
        lbltxt.Text = "Blog Submitted";
       
        
        
    }
}