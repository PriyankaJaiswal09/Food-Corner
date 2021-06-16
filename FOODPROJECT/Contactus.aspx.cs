using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Class1 : System.Web.UI.Page
{
    SqlConnection cnn;
    protected void Page_Load(object sender, EventArgs e)
    {    
        string connectionString;

        connectionString = @"Data Source=DESKTOP-2GHLSQ4;Initial Catalog=FOODSYSTEM;Integrated Security=True";
        cnn = new SqlConnection(connectionString);
        cnn.Open();
    }



    protected void btn2_Click1(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("INSERT INTO RequestMST VALUES(@Cname,@Email,@Subject,@message,GETDATE())", cnn);

       
        cmd.Parameters.AddWithValue("@Cname", txtname.Text);
        cmd.Parameters.AddWithValue("@Email", txtemail.Text);
        cmd.Parameters.AddWithValue("@Subject", txtsub.Text);
        cmd.Parameters.AddWithValue("@message", txtmsg.Text);

        cmd.ExecuteNonQuery();

        lblmsg.Text = "We will contact you Soon!";

        if (lblmsg.Text == "We will contact you Soon!")
        {

           
            txtname.Text = "";
            txtemail.Text = "";
            txtsub.Text = "";
            txtmsg.Text = "";

        }
    }

    protected void Btn1_Click(object sender, EventArgs e)
    {
        txtname.Text = "";
        txtemail.Text = "";
        txtsub.Text = "";
        txtmsg.Text = "";
    }
}
