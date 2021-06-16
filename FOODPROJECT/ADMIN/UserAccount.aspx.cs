using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ADMIN_UserAccount : System.Web.UI.Page
{
   

    protected void Page_Load(object sender, EventArgs e)
    {
            lbl.Text = GridView2.Rows.Count.ToString();
     
    }
    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}