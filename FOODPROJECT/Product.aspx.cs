using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Product : System.Web.UI.Page
{
    SqlConnection cnn;
    protected void Page_Load(object sender, EventArgs e)

    {
        string connectionString;

        connectionString = @"Data Source=DESKTOP-2GHLSQ4;Initial Catalog=FOODSYSTEM;Integrated Security=True";
        cnn = new SqlConnection(connectionString);
        cnn.Open();

        if (Page.IsPostBack == false)
        {
            string idd = Request.QueryString["id"].ToString();
            if (idd == "1")
            {
                string s = "GUJARATI";
                string c1 = "Select * from ProductMst where CName= '" + s + "' ";
                SqlCommand cmd1 = new SqlCommand(c1, cnn);
                SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
                DataSet ds1 = new DataSet();
                da1.Fill(ds1);
                DataList1.DataSource = ds1;
                DataList1.DataBind();
            }
            else if (idd == "2")
            {
                string s = "CHINEES";
                string c1 = "Select * from ProductMst where CName= '" + s + "' ";
                SqlCommand cmd1 = new SqlCommand(c1, cnn);
                SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
                DataSet ds1 = new DataSet();
                da1.Fill(ds1);
                DataList1.DataSource = ds1;
                DataList1.DataBind();
            }
            else if (idd == "3")
            {
                string s = "SOUTH INDIAN";
                string c1 = "Select * from ProductMst where CName= '" + s + "' ";
                SqlCommand cmd1 = new SqlCommand(c1, cnn);
                SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
                DataSet ds1 = new DataSet();
                da1.Fill(ds1);
                DataList1.DataSource = ds1;
                DataList1.DataBind();
            }
            else if (idd == "4")
            {
                string s = "PUNJABI";
                string c1 = "Select * from ProductMst where CName= '" + s + "' ";
                SqlCommand cmd1 = new SqlCommand(c1, cnn);
                SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
                DataSet ds1 = new DataSet();
                da1.Fill(ds1);
                DataList1.DataSource = ds1;
                DataList1.DataBind();
            }
            else if (idd == "5")
            {
                string s = "KATHIYAWADI";
                string c1 = "Select * from ProductMst where CName= '" + s + "' ";
                SqlCommand cmd1 = new SqlCommand(c1, cnn);
                SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
                DataSet ds1 = new DataSet();
                da1.Fill(ds1);
                DataList1.DataSource = ds1;
                DataList1.DataBind();
            }
            else if (idd == "6")
            {
                string s = "SOFT DRINK";
                string c1 = "Select * from ProductMst where CName= '" + s + "' ";
                SqlCommand cmd1 = new SqlCommand(c1, cnn);
                SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
                DataSet ds1 = new DataSet();
                da1.Fill(ds1);
                DataList1.DataSource = ds1;
                DataList1.DataBind();
            }
            else if (idd == "7")
            {
                string s = "ICE CREAM";
                string c1 = "Select * from ProductMst where CName= '" + s + "' ";
                SqlCommand cmd1 = new SqlCommand(c1, cnn);
                SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
                DataSet ds1 = new DataSet();
                da1.Fill(ds1);
                DataList1.DataSource = ds1;
                DataList1.DataBind();
            }
            else if (idd == "8")
            {
                string s = "BRAK FAST";
                string c1 = "Select * from ProductMst where CName= '" + s + "' ";
                SqlCommand cmd1 = new SqlCommand(c1, cnn);
                SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
                DataSet ds1 = new DataSet();
                da1.Fill(ds1);
                DataList1.DataSource = ds1;
                DataList1.DataBind();
            }
            else if (idd == "9")
            {
                string s = "ITALIAN";
                string c1 = "Select * from ProductMst where CName= '" + s + "' ";
                SqlCommand cmd1 = new SqlCommand(c1, cnn);
                SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
                DataSet ds1 = new DataSet();
                da1.Fill(ds1);
                DataList1.DataSource = ds1;
                DataList1.DataBind();
            }


        }
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        Session["vid"] = e.CommandArgument.ToString();
        Response.Redirect("Viewmore.aspx");
    }
}