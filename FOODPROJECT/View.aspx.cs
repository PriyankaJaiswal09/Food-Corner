using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Member_View : System.Web.UI.Page
{
    SqlConnection cnn;
    protected void Page_Load(object sender, EventArgs e)
    {
        string connectionString;

        connectionString = @"Data Source=DESKTOP-2GHLSQ4;Initial Catalog=FOODSYSTEM;Integrated Security=True";
        cnn = new SqlConnection(connectionString);
        cnn.Open();

        SqlCommand cmd = new SqlCommand("select PName, Price, Detail, Cname, Image from ProductMst where PID='" + Convert.ToInt32(Session["vid"].ToString()) + "'", cnn);
        SqlDataReader sdr = cmd.ExecuteReader();
        while (sdr.Read())
        {
            lblname.Text = sdr["PName"].ToString();
            lblprice.Text = sdr["Price"].ToString();
            lbldetail.Text = sdr["Detail"].ToString();
            lblcate.Text = sdr["Cname"].ToString();
            Image1.ImageUrl = sdr["Image"].ToString();
        }
    }
     protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Payment.aspx");
    } 
}