<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>  <meta name="format-detection" content="telephone=no"/>
    <link rel="icon" href="images/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="css/grid.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/camera.css">
    <link rel="stylesheet" href="css/jquery.fancybox.css">

    <script src="js/jquery.js"></script>
    <script src="js/jquery-migrate-1.2.1.js"></script>

 
    <script src='js/device.min.js'></script> 
</head>
<body>
    <form id="form1" runat="server">
    <div class="page">
    <!--========================================================
                              HEADER
    =========================================================-->
    <header>

        <div class="camera_container">
            <div id="camera" class="camera_wrap">
                
                 <div data-thumb="foodimg/4.4.jpg" data-src="foodimg/4.jpg">
                    <div class="camera_caption fadeIn">
                    </div>
                </div>
                <div data-thumb="foodimg/1.1.jpg" data-src="foodimg/1.jpg">
                    <div class="camera_caption fadeIn">
                    </div>
                </div>
                <div data-thumb="foodimg/3.3.jpg" data-src="foodimg/3.jpg">
                    <div class="camera_caption fadeIn">
                    </div>
                </div>
                <div data-thumb="foodimg/2.2.jpg" data-src="foodimg/2.jpg">
                    <div class="camera_caption fadeIn">
                    </div>
                </div>
                <div data-thumb="foodimg/5.5.jpg" data-src="foodimg/5.jpg">
                    <div class="camera_caption fadeIn">
                    </div>
                </div>
            </div>

            <div class="brand wow fadeIn">
                <h1 class="brand_name">
                    <a href="./">Food Corner</a>
                </h1>
            </div>
        </div>
        
        <div class="toggle-menu-container">
            <nav class="nav">
                <div class="nav_title"></div>
                <a class="sf-menu-toggle fa fa-bars" href="#"></a>
                  <ul class="sf-menu"> <li>
                        <a href="#"><asp:Label Text="" runat="server" ID="lblname"></asp:Label> </a>
                    </li>
               
                    <li class="active">
                        <a href="Home.aspx">Home</a>
                    </li>
                    <li>
                        <a href="Account.aspx">Update Account</a>
                    </li>                  
                    <li>
                        <a href="Password.aspx">Change Password</a>
                    </li>
                    <li>
                        <a href="Default.aspx">LogOut</a>
                    </li>
                </ul>
            </nav>            
        </div>

    </header>
    <!--========================================================
                              CONTENT
    =========================================================-->
    <main>
        <section class="well">
            <div class="container">
                <h2><em>Welcome to Priyanka's Kitchen..</em></h2>
            </div>            
           <div class="gallery">
                <div class="gallery_col-1">
                     <a data-fancybox-group="gallery" href="Products.aspx?id=8" class="gallery_item thumb lazy-img" style="padding-bottom: 72.23168654173765%;">
                      <img data-src="foodimg/breakfast.jpg" alt="">
                        <div class="gallery_overlay">
                            <div class="gallery_caption">
                                <p><b><em>BreakFast</em></b></p>
                                <p>Morning BreakFast ! Yummm...</p>
                            </div>
                        </div>
                    </a>
                     <a data-fancybox-group="gallery" href="Products.aspx?id=1" class="gallery_item thumb lazy-img" style="padding-bottom: 93.96551724137931%;">
                        <img data-src="foodimg/gujrati.jpg" alt="">
                        <div class="gallery_overlay">
                            <div class="gallery_caption">
                                <p><b><em>Gujrati Food</em></b></p>
                                <p>Gujrati dishesh craving ! Yummm...</p>
                            </div>
                        </div>
                    </a>
                   
                    <a data-fancybox-group="gallery" href="Products.aspx?id=3" class="gallery_item thumb lazy-img" style="padding-bottom: 94.6551724137931%;">
                       <img data-src="foodimg/south.jpg" alt="">
                        <div class="gallery_overlay">
                            <div class="gallery_caption">
                                <p><b><em>South Indian</em></b></p>
                                <p>Craving of Idli Dosa ! Yummm...</p>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="gallery_col-2">
                    <a data-fancybox-group="gallery" href="Products.aspx?id=4" class="gallery_item thumb lazy-img" style="padding-bottom: 52.48322147651007%;">
                        <img data-src="foodimg/punjabi.jpg" alt="">
                        <div class="gallery_overlay">
                            <div class="gallery_caption">
                                <p><b><em>Punjabi Food</em></b></p>
                                <p>Punjab Special Food Craving ! Yummm...</p>
                            </div>
                        </div>
                    </a>
                    <a data-fancybox-group="gallery" href="Products.aspx?id=5" class="gallery_item thumb lazy-img" style="padding-bottom: 55.97315436241611%;">
                        <img data-src="foodimg/cake.jpg" alt="">
                        <div class="gallery_overlay">
                            <div class="gallery_caption">
                                <p><b><em>Cake and Pestries</em></b></p>
                                <p>Craving of Cake and Pestries ! Yummm...</p>
                            </div>
                        </div>
                    </a>
                    <a data-fancybox-group="gallery" href="Products.aspx?id=6" class="gallery_item thumb lazy-img" style="padding-bottom: 96.10738255033557%;">
                        <img data-src="foodimg/juise.jpg" alt="">
                        <div class="gallery_overlay">
                            <div class="gallery_caption">
                                <p><b><em>Soft Drink and Juise</em></b></p>
                                <p>Craving of Fruit Juises and Soft drinks ! Yummm...</p>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="gallery_col-3">
               <a data-fancybox-group="gallery" href="Products.aspx?id=9" class="gallery_item thumb lazy-img" style="padding-bottom: 93.69676320272572%;">
                        <img data-src="foodimg/italian.jpg" alt="">
                        <div class="gallery_overlay">
                            <div class="gallery_caption">
                                <p><b><em>Italian Food</em></b></p>
                                <p>Fast Food Mood ! Yummm...</p>
                            </div>
                        </div>
                    </a>
                    
                      <a data-fancybox-group="gallery" href="Products.aspx?id=2" class="gallery_item thumb lazy-img" style="padding-bottom: 74.13793103448276%;">
                         <img data-src="foodimg/chienese.jpg" alt="">
                        <div class="gallery_overlay">
                            <div class="gallery_caption">
                                <p><b><em>Chienes Food</em></b></p>
                                <p>Craving of Chienese Food ! Yummm...</p>
                            </div>
                        </div>
                    </a>
                    <a data-fancybox-group="gallery" href="Products.aspx?id=7" class="gallery_item thumb lazy-img" style="padding-bottom: 93.69676320272572%;">
                       <img data-src="foodimg/ice.jpg" alt="">
                        <div class="gallery_overlay">
                            <div class="gallery_caption">
                                <p><b><em>Ice Cream</em></b></p>
                                <p>Craving of Ice Cream ! Yummm...</p>
                            </div>
                        </div>
                    </a>
                    
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
    </form>
</body>
</html>
