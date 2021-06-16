using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Member_Account : System.Web.UI.Page
{
    SqlConnection cnn;
    protected void Page_Load(object sender, EventArgs e)
    {
        string connectionString;

        connectionString = @"Data Source=DESKTOP-2GHLSQ4;Initial Catalog=FOODSYSTEM;Integrated Security=True";
        cnn = new SqlConnection(connectionString);
        cnn.Open();
    }

    protected void submit_Click(object sender, EventArgs e)
    {
                SqlDataAdapter d2 = new SqlDataAdapter();
                String s2;
                s2 = "Update UserMst SET Fname='" + txtfname.Text + "', Lname='" + txtlname.Text + "', Mobile='" + txtmobile.Text + "', Address='" + txtadd.Text + "', City='" + txtcity.Text + "', Pincode='" + txtpincode.Text + "', Email='" + txtemail.Text + "' where Email='"+txtoldemail.Text+"'";
                d2.UpdateCommand = new SqlCommand(s2, cnn);
                d2.UpdateCommand.ExecuteNonQuery();
               lblmsg.Text ="Updated successfully !";

        if (lblmsg.Text == "Updated successfully !")
        {
            txtfname.Text = "";
            txtlname.Text = "";
            txtmobile.Text = "";
            txtadd.Text = "";
            txtcity.Text = "";
            txtpincode.Text = "";
            txtoldemail.Text = "";
            txtemail.Text = "";
            
        }

    }
    }
