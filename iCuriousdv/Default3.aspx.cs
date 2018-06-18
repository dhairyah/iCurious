using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Default3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
    {


    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ddcurious2"].ConnectionString);
       
        SqlCommand cmd = new SqlCommand();
        for (int i = 0; i <= CheckBoxList1.Items.Count - 1; i++)
        {
            if (CheckBoxList1.Items[i].Selected)
            {
                int j = i + 1;
                string abc = Session["uname"].ToString();
                string insertSql = "INSERT INTO Users_Interests (Username,int_id) values ('"+abc+"',"+j+")";

                


                cmd.Connection = con;
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = insertSql;
               
                

                

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
               
                
                
            }

        }
        
        Response.Redirect("~/Bookmark.aspx");
        
    }
}