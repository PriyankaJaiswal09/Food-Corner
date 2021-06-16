using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Rgistration : System.Web.UI.Page
{
    SqlConnection cnn;
    protected void Page_Load(object sender, EventArgs e)
    {
        string connectionString;

        connectionString = @"Data Source=DESKTOP-2GHLSQ4;Initial Catalog=FOODSYSTEM;Integrated Security=True";
        cnn = new SqlConnection(connectionString);
        cnn.Open();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
               
            try
            { 
            SqlCommand cmd = new SqlCommand("INSERT INTO USERMST VALUES(@FNAME,@LNAME,@MOBILE,@GENDER,@ADD,@CITY,@PIN,@EMAIL,@PASS,GETDATE())", cnn);
            cmd.Parameters.AddWithValue("@FNAME", txtfname.Text);
            cmd.Parameters.AddWithValue("@LNAME", txtlname.Text);
            cmd.Parameters.AddWithValue("@MOBILE", txtmobile.Text);
            cmd.Parameters.AddWithValue("@GENDER", gender.SelectedValue);
            cmd.Parameters.AddWithValue("@ADD", txtadd.Text);
            cmd.Parameters.AddWithValue("@CITY", txtcity.Text);
            cmd.Parameters.AddWithValue("@PIN", txtpincode.Text);
            cmd.Parameters.AddWithValue("@EMAIL", txtemail.Text);
            cmd.Parameters.AddWithValue("@PASS", txtpass.Text);

            cmd.ExecuteNonQuery();

            lblmsg.Text = "Registration Successfully!";
            }
        catch
        {
            lblmsg.Text = "Choose another username this username exist";
        }
        
        if (lblmsg.Text == "Registration Successfully!")
        {
            txtfname.Text = "";
            txtlname.Text = "";
            txtmobile.Text = "";
            txtadd.Text = "";
            txtcity.Text = "";
            txtpincode.Text = "";
            txtemail.Text = "";
            txtpass.Text = "";
            txtconfirmpass.Text = "";
        }
    }
  
}