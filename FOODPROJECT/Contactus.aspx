<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeFile="Contactus.aspx.cs" Inherits="Class1" %>

<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
    <head>
 <title>contact</title>
    <meta charset="utf-8">
    <meta name="format-detection" content="telephone=no"/>
    <link rel="icon" href="images/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="css/grid.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/contact-form.css">

    <script src="js/jquery.js"></script>
    <script src="js/jquery-migrate-1.2.1.js"></script>
 
    <script src='js/device.min.js'></script> 
        <style type="text/css">
            .txt {}
        </style>
</head>

<body>
<div class="page">
    <!--========================================================
                              HEADER
    =========================================================-->
    <header>

        <div id="stuck_container" class="stuck_container">
            <div class="container">

                <div class="brand">
                    <h1 class="brand_name">
                        <a href="./">Food Corner</a>
                    </h1>
                </div>

                <nav class="nav">
                    <ul class="sf-menu">
                        <li>
                            <a href="index.html">Home</a>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>

    </header>
    <!--========================================================
                              CONTENT
    =========================================================-->
    <main>
        <section class="well well__offset-3">
            <div class="container">
                <h2><em>Our</em>Contacts</h2>
                <div class="row box-3">
                    <div class="grid_5">
                        <h2>Contacts Form</h2>
                        <form runat="server">
                            <div class="contact-form-loader"></div>
                                 <label>Name <br />
                                      <asp:TextBox ID="txtname" runat="server" CssClass="txt" Width="209px" BorderColor="#660033" BorderStyle="Groove"></asp:TextBox><br />
                                      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                             ControlToValidate="txtname" ErrorMessage="Please fill properly" ForeColor="#660033" 
                                               SetFocusOnError="True"></asp:RequiredFieldValidator>  
                                    </label> <br /><br />
                                <label>Email <br />
                                        <asp:TextBox ID="txtemail" runat="server" CssClass="txt" Width="209px" BorderColor="#660033" BorderStyle="Groove"></asp:TextBox><br />
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                   ControlToValidate="txtemail" ErrorMessage="Please fill properly" ForeColor="#660033" 
                                   SetFocusOnError="True"></asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                   ControlToValidate="txtemail" ErrorMessage="invalid email" ForeColor="#660033" 
                                   SetFocusOnError="True" 
                                   ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                </label><br />
                            <label>Subject <br />
                                    <asp:TextBox ID="txtsub" runat="server"  CssClass="txt" Width="209px" BorderColor="#660033" BorderStyle="Groove"></asp:TextBox><br />
                                      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                             ControlToValidate="txtsub" ErrorMessage="Please fill properly" ForeColor="#660033" 
                                               SetFocusOnError="True"></asp:RequiredFieldValidator>  
                            </label><br /><br />
                             <label>Message<br />
                            <asp:TextBox ID="txtmsg" runat="server" CssClass="txt" Height="45px" BorderColor="#660033" BorderStyle="Groove" TextMode="MultiLine" Width="209px"></asp:TextBox><br />
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                             ControlToValidate="txtmsg" ErrorMessage="Please fill properly" ForeColor="#660033" 
                                               SetFocusOnError="True"></asp:RequiredFieldValidator> 
                           </label><br />

                            <asp:Button ID="Btn1" runat="server" CssClass="btn" BackColor="White" BorderColor="#990033" Text="Clear" Height="40px" Font-Bold="true" ForeColor="#660033" Width="80px" OnClick="Btn1_Click"  />&nbsp;
                            &nbsp;
                               <asp:Button ID="btn2" runat="server" CssClass="btn" BackColor="White" BorderColor="#990033" Text="Send" Height="40px" Font-Bold="true" ForeColor="#660033" Width="80px" OnClick="btn2_Click1"  /><br /><br/>
                            <asp:Label ID="lblmsg" runat="server" ForeColor="#660033"></asp:Label>

                        </form>
                        
                    </div>    
                  
                    <div class="preffix_1 grid_6">
                        <h2>Contacts Information</h2>
                        <address class="address-2">
                            <div class="address_container"><p>Jai Hind College,<br />
                                                               Admissions Office,<br />
                                                               "A" Road, Churchgate,<br />
                                                               Mumbai - 400 020<br />
                                                                Maharashtra, India</p></div>
                            <dl>
                                <dt>Telphone:</dt> <dd>+1 800 603 6035</dd><br />
                                <dt>FAX:</dt> <dd>+1 800 899 9898</dd><br/>
                                <dt>E-mail:</dt> <dd><a href="jaiswal.priyanka.19bit021@gmail.com">jaiswal.priyanka.19bit021@gmail.com</a></dd>
                            </dl>                        
                        </address>
                    </div>
                </div>
            </div>
        </section>
    </main>

    <!--========================================================
                              FOOTER
    =========================================================-->
    <footer>
        <div class="container">
            <ul class="socials">
               <li><a href="https://www.facebook.com" class="fa fa-facebook"></a></li>
                <li><a href="https://twitter.com/LOGIN" class="fa fa-tumblr"></a></li>
                <li><a href="https://www.google.com" class="fa fa-google-plus"></a></li>
            </ul>
            <div class="copyright">© Priyanka Jaiswal<span id="copyright-year"></span> |
                <a href="#">Privacy Policy</a>
            </div>
        </div>
    </footer>
</div>

<script src="js/script.js"></script>
</body>
</html>