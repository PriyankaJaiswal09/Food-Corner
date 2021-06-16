using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Member_Payment : System.Web.UI.Page
{
    SqlConnection cnn;
    protected void Page_Load(object sender, EventArgs e)
    {
        string connectionString;

        connectionString = @"Data Source=DESKTOP-2GHLSQ4;Initial Catalog=FOODSYSTEM;Integrated Security=True";
        cnn = new SqlConnection(connectionString);
        cnn.Open();
    }

    protected void submit_Click1(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("INSERT INTO Payment VALUES(@Name,@Email,@Mobile,@Address,@Paytype,GETDATE())", cnn);


        cmd.Parameters.AddWithValue("@Name", txtname.Text);
        cmd.Parameters.AddWithValue("@Email", txtemail.Text);
        cmd.Parameters.AddWithValue("@Mobile", txtmobile.Text);
        cmd.Parameters.AddWithValue("@Address", txtadd.Text);
        cmd.Parameters.AddWithValue("@Paytype", COD.SelectedValue);

        cmd.ExecuteNonQuery();
        Response.Redirect("~/Thanks.aspx");
    }
}