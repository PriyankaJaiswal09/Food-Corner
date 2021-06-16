using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class ADMIN_AddProduct : System.Web.UI.Page
{
    SqlConnection cnn;
    protected void Page_Load(object sender, EventArgs e)
    {
        string connectionString;

        connectionString = @"Data Source=DESKTOP-2GHLSQ4;Initial Catalog=FOODSYSTEM;Integrated Security=True";
        cnn = new SqlConnection(connectionString);
        cnn.Open();
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        try
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO PRODUCTMST VALUES(@PName,@Detail,@Price,@Image,@Cname,@Status,GETDATE())", cnn);
            cmd.Parameters.AddWithValue("@PName", txtname.Text);
            cmd.Parameters.AddWithValue("@Detail", txtdetail.Text);
            cmd.Parameters.AddWithValue("@Price", Convert.ToDouble(txtprice.Text));
            cmd.Parameters.AddWithValue("@Image", "~/product/" + FileUpload1.FileName.ToString());
            cmd.Parameters.AddWithValue("@Cname", drpcate.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Status", 0);
            drpcate.SelectedIndex = 0;

            cmd.ExecuteNonQuery();
            lblmsg.Text = "Product Inserted";

        }
        catch
        {
            lblmsg.Text = "Choose another product this username exist";

        }
    }
}