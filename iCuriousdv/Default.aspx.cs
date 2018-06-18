using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LoginButton_Click(object sender, EventArgs e)
    {

    }
    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ddcurious2"].ConnectionString);
        con.Open();
        int temp = 0;
        string qq = "select count(*) from Users where Username='"+Login1.UserName+"'";
        SqlCommand Check = new SqlCommand(qq, con);
        temp = Convert.ToInt32(Check.ExecuteScalar().ToString());
      //  Response.Write(temp);
        if (temp == 1)
        {
            string qq2 = "select Password from Users where Username = '"+Login1.UserName+"'";
            SqlCommand go = new SqlCommand(qq2, con);
            string pw = go.ExecuteScalar().ToString();
            if (pw == Login1.Password)
            {

                Session.Add("uname", Login1.UserName);
                Response.Redirect("~/Default3.aspx");
            }
            else
            {
                //e.Authenticated = false;
                Login1.FailureText = "Password Error";
            }
        }
        else
        {
            // e.Authenticated = false;
            Login1.FailureText = "Username Error";
        }
    }

}
