﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ADMIN_NewOrder : System.Web.UI.Page
{
   
    
    protected void Page_Load(object sender, EventArgs e)
    {
        lbl.Text = GridView1.Rows.Count.ToString();
    }
    
}