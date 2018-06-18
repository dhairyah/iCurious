using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class _JoinIn : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        //Create ConnectionString and Inser Statement
        string connectionString = ConfigurationManager.ConnectionStrings["ddCurious2"].ConnectionString;
        string insertSql = "INSERT INTO Users (FirstName,LastName,UserName,Password,Email) values (@FirstName,@LastName,@UserName,@Password,@Email)";
        //Create SQL connection
        SqlConnection con = new SqlConnection(connectionString);

        //Create SQL Command And Sql Parameters

        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = insertSql;

        SqlParameter firstName = new SqlParameter("@FirstName", SqlDbType.VarChar, 50);
        firstName.Value = txtFirstName.Text.ToString();
        cmd.Parameters.Add(firstName);

        SqlParameter lastName = new SqlParameter("@LastName", SqlDbType.VarChar, 50);
        lastName.Value = txtLastName.Text.ToString();
        cmd.Parameters.Add(lastName);

        SqlParameter userName = new SqlParameter("@UserName", SqlDbType.VarChar, 50);
        userName.Value = txtUserName.Text.ToString();
        cmd.Parameters.Add(userName);

        SqlParameter pwd = new SqlParameter("@Password", SqlDbType.VarChar, 50);
        pwd.Value = txtPwd.Text.ToString();
        cmd.Parameters.Add(pwd);

        SqlParameter email = new SqlParameter("@Email", SqlDbType.VarChar, 50);
        email.Value = txtEmailID.Text.ToString();
        cmd.Parameters.Add(email);




        try
        {
            con.Open();
            cmd.ExecuteNonQuery();
            lblMsg.Text = "User Registration successful...Click <a href=Default.aspx>here</a> to continue.";
            ClearControls(Page);
        }
        catch (SqlException ex)
        {
            string errorMessage = "UserName Already Exists";
            // errorMessage += ex.Message;
            lblMsg.Text = errorMessage;
            // throw new Exception(errorMessage);

        }
        finally
        {
            con.Close();
        }
    }

    public static void ClearControls(Control Parent)
    {
        foreach (Control c in Parent.Controls)
            ClearControls(c);
    }
}
