using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Member_Password : System.Web.UI.Page
{
    SqlConnection cnn;
    protected void Page_Load(object sender, EventArgs e)
    {
        lbl.Text = "";
        string connectionString;

        connectionString = @"Data Source=DESKTOP-2GHLSQ4;Initial Catalog=FOODSYSTEM;Integrated Security=True";
        cnn = new SqlConnection(connectionString);
        cnn.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
        SqlDataAdapter d2 = new SqlDataAdapter();
        String s2;
        s2 = "Update UserMst SET Password='" + txtnewpass.Text + "' where Email='" +email.Text + "'";
        d2.UpdateCommand = new SqlCommand(s2, cnn);
        d2.UpdateCommand.ExecuteNonQuery();
        lbl.Text = "Password Changed!";

        if (lbl.Text == "Password Changed!")
        {
            email.Text = "";
            txtnewpass.Text = "";
            txtcpass.Text = "";
            
        }
    }

    
}