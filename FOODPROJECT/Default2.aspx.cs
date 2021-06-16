﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FormsAuthentication.Authenticate(username.Text, password.Text))
        {
            FormsAuthentication.RedirectFromLoginPage(username.Text,checkb.Checked);
        }
        else
        {
            Label1.Text = "Invalid Credentials";
        }
    }
}