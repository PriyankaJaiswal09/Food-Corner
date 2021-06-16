using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    SqlConnection cnn;
    protected void Page_Load(object sender, EventArgs e)
    {
        lblmsg.Text = "";
        string connectionString;

        connectionString = @"Data Source=DESKTOP-2GHLSQ4;Initial Catalog=FOODSYSTEM;Integrated Security=True";
        cnn = new SqlConnection(connectionString);
        cnn.Open();
    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("select * from USERMST", cnn);

        SqlDataReader sdr = cmd.ExecuteReader();
        while (sdr.Read())
        {
            if (sdr[8].ToString().Equals(txtusername.Text) && sdr[9].ToString().Equals(txtpassword.Text))
            {
                Response.Cookies["email"].Value = sdr[8].ToString();
                Response.Cookies["Uname"].Value = sdr[1].ToString() + " " + sdr[2].ToString();
               
                Response.Redirect("~/Home.aspx");

            }
            else
            {
                lblmsg.Text = "Please enter write username and password";
            }

        }

    }
    
}