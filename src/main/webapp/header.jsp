<%-- 
    Document   : header
    Created on : Nov 19, 2019, 2:55:14 PM
    Author     : MINH THUY
--%>

<%@page import="config.UserData"%>
<%@page import="web.DAO.userDAO"%>
<%@page import="com.google.gson.Gson"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%  
    String btn1, btn2, link1, link2;
     int numOfCart = 0;
    UserData user = null;
    if(session.getAttribute("user") != null )
    {
 Gson gson = new Gson();
user = gson.fromJson(session.getAttribute("user").toString(), UserData.class);        
          btn1 = user.getUsername();
          link1 = "/user/index.jsp";
          btn2 = "Signout";
          link2 = "/user/do/signout";
     numOfCart = new userDAO().getNumOfCart(user.getUsername());
    }
    else
    {
        btn1= "Signin";
        btn2 ="Signup";
        link1 = "/signin";
        link2 = "/signup";
    }
      
                                                             %>
<!doctype html>
<html class="no-js" lang="en">
    
<!-- Mirrored from htmlcooker.com/tvlgiao/everything/assets/everything/fashion// by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 19 Oct 2015 02:40:03 GMT -->
<head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Fashion : Everything Template</title>
        <meta name="description" content="Lorem ipsum dolor sit amet, consectetur adipiscing elit.">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="author" content="HTMLCooker">

        <!-- ================= Favicon ================== -->
        <!-- Standard -->
        <link rel="shortcut icon" href="http://placehold.it/64.png/000/fff">
        <!-- Retina iPad Touch Icon-->
        <link rel="apple-touch-icon" sizes="144x144" href="http://placehold.it/144.png/000/fff">
        <!-- Retina iPhone Touch Icon-->
        <link rel="apple-touch-icon" sizes="114x114" href="http://placehold.it/114.png/000/fff">
        <!-- Standard iPad Touch Icon--> 
        <link rel="apple-touch-icon" sizes="72x72" href="http://placehold.it/72.png/000/fff">
        <!-- Standard iPhone Touch Icon--> 
        <link rel="apple-touch-icon" sizes="57x57" href="http://placehold.it/57.png/000/fff">

    	<!-- ================= Google Fonts ================== -->
        <link href='http://fonts.googleapis.com/css?family=Lato:200,300,400,500,600,700,800&amp;subset=latin,cyrillic-ext,cyrillic,greek-ext,greek,vietnamese,latin-ext' rel='stylesheet' type='text/css' />
        <link href='http://fonts.googleapis.com/css?family=Lora:200,300,400,500,600,700,800&amp;subset=latin,cyrillic-ext,cyrillic,greek-ext,greek,vietnamese,latin-ext' rel='stylesheet' type='text/css' />
        <link href='http://fonts.googleapis.com/css?family=Raleway:200,300,400,500,600,700,800&amp;subset=latin,cyrillic-ext,cyrillic,greek-ext,greek,vietnamese,latin-ext' rel='stylesheet' type='text/css' />
        
        <!-- Cloud Zoom CSS -->
        <!-- <link rel="stylesheet" type="text/css" href="css/em_cloudzoom.css" media="all" /> -->

        <!-- Menu CSS -->
        <link rel="stylesheet" type="text/css" href="/css/menu.css" media="all" />
        <!-- Mega Menu CSS -->
        <link rel="stylesheet" type="text/css" href="/css/megamenu.css" media="all" />

        <!-- Widget CSS -->
        <!-- <link rel="stylesheet" type="text/css" href="css/widgets.css" media="all" /> -->
        
        <!-- Default CSS -->
        <link rel="stylesheet" type="text/css" href="/css/styles.css" media="all" />
        <!-- Font Awesome CSS -->
        <link rel="stylesheet" type="text/css" href="/css/font-awesome.css" media="all" />
        <!-- Owl Carousel CSS -->
        <link rel="stylesheet" type="text/css" href="/css/owl.carousel.css" media="all" />
        <!-- Responsive CSS -->
        <link rel="stylesheet" type="text/css" href="/css/responsive.css" media="all" />
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" type="text/css" href="/css/bootstrap.css" media="all" />

        <!-- Ajax Cart CSS -->
        <!-- <link rel="stylesheet" type="text/css" href="css/em_ajaxcart.css" media="all" /> -->
        <!-- Blog Style CSS -->
        <!-- <link rel="stylesheet" type="text/css" href="css/blog-styles.css" media="all" /> -->
        <!-- Multi Deal Pro CSS -->
        <!-- <link rel="stylesheet" type="text/css" href="css/em_multidealpro.css" media="all" /> -->

        <!-- Product Labels CSS -->
        <link rel="stylesheet" type="text/css" href="/css/em_productlabels.css" media="all" />

        <!-- Quick Shop CSS -->
        <!-- <link rel="stylesheet" type="text/css" href="css/em_quickshop.css" media="all" /> -->

        <!-- Fancybox CSS -->
        <link rel="stylesheet" type="text/css" href="/css/jquery.fancybox.css" media="all" />

        <!-- Responsive Tab CSS -->
        <link rel="stylesheet" type="text/css" href="/css/responsive-tabs.css" media="all" />
        <!-- Print CSS -->
        <link rel="stylesheet" type="text/css" href="/css/print.css" media="print" />
        <!-- Fashion CSS -->
        <link rel='stylesheet' type='text/css' media='all' href='/css/style_fashion.css' />
        <!-- Fashion CSS -->
        <link rel='stylesheet' type='text/css' media='all' href='/css/color1.css' />




    	<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
		  <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
		<![endif]-->
	</head>

	<body class="cms-index-index">
    	
        <div class="wrapper ">
            <noscript>
                <div class="global-site-notice noscript">
                    <div class="notice-inner">
                        <p> <strong>JavaScript seems to be disabled in your browser.</strong>
                            <br /> You must have JavaScript enabled in your browser to utilize the functionality of this website.</p>
                    </div>
                </div>
            </noscript>
            <div class="page two-columns-left">
                
                <div class="em-wrapper-header">
                    <div id="em-mheader" class="visible-xs container">
                    <div id="em-mheader-top" class="row">
                        <div id="em-mheader-logo" class="col-xs-4">
                            <div class="em-logo"><a href="/" title="Fashion Commerce" class="logo"><strong>Fashion Commerce</strong><img src="/images/logo_small.png" alt="Fashion Commerce" /></a>
                            </div>
                        </div><!-- /#em-mheader-logo -->
                        <div class="col-xs-20">
                            <div class="em-top-search">
                                <div class="em-header-search-mobile">
                                    <form method="get">
                                        <div class="form-search no_cate_search">
                                            <div class="text-search">
                                                <input id="search-mobile" type="text" name="q" value="" class="input-text" maxlength="128" />
                                                <button type="submit" title="Search" class="button"><span><span>Search</span></span>
                                                </button>
                                                <div id="search_autocomplete_mobile" class="search-autocomplete"></div>
                                            </div>
                                        </div>
                                    </form>
                                </div><!-- /.em-header-search-mobile -->
                            </div><!-- /.em-top-search -->
                            <div class="em-top-cart">
                                <div class="em-wrapper-topcart-mobile em-no-quickshop">
                                    <div class="em-container-topcart">
                                        <div class="em-summary-topcart">
                                            <a id="em-amount-cart-link" title="Shopping Cart" class="em-amount-topcart" href="cart.html"> <span class="em-topcart-text">My Cart:</span> <span class="em-topcart-qty">0</span> </a>
                                        </div>
                                    </div>
                                </div>
                            </div><!-- /.em-top-cart -->
                            <div id="em-mheader-wrapper-menu"> <span class="visible-xs fa fa-bars" id="em-mheader-menu-icon"></span>
                                <div id="em-mheader-menu-content" style="display: none;">
                                    <div class="em-wrapper-top">
                                        <div class="em-language-currency row">
                                            <div class="col-sm-24">
                                                <div class="form-language em-language-style-mobile">
                                                    <ul>
                                                        <li class="selected">
                                                            <a href="#" title="English"> <img alt="english" src="images/language/english.png" /> </a>
                                                        </li>
                                                        <li class="">
                                                            <a href="#" title="French"> <img alt="french" src="images/language/french.png" /> </a>
                                                        </li>
                                                        <li class="">
                                                            <a href="#" title="German"> <img alt="german" src="images/language/german.png" /> </a>
                                                        </li>
                                                    </ul>
                                                </div><!-- /.form-language -->
                                                <div class="em-currency-style-mobile">
                                                    <ul class="list-inline">
                                                        <li class=""> <a href="#"> AUD </a>
                                                        </li>
                                                        <li class=""> <a href="#"> EUR </a>
                                                        </li>
                                                        <li class=" selected"> <a href="#"> USD </a>
                                                        </li>
                                                    </ul>
                                                </div><!-- /.em-currency-style-mobile -->
                                            </div>
                                        </div><!-- /.em-language-currency -->
                                        <div class="em-top-links row">
                                            <div class="">
                                                <ul class="top-header-link links">
                                                    <li class="first col-xs-8"> <a title="Log In" class="login-link fa fa-user" href="#"><span>Log In</span></a>
                                                    </li>
                                                    <li class="col-xs-8"> <a title="Sign up" class='signup-link fa fa-sign-out' href="#"><span>Sign up</span></a>
                                                    </li>
                                                    <li class="last col-xs-8"> <a href="#" class="checkout-link fa fa-shopping-cart"><span>Cart</span></a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div><!-- /.em-top-links -->
                                    </div><!-- /.em-wrapper-top -->
                                    <div class="row mobile-main-menu toggle-menu">
                                        <div class="col-sm-24">
                                            <div class="em-top-menu">
                                                <div class="em-menu-mobile">
                                                    <div class="megamenu-wrapper wrapper-7_5505">
                                                        <div class="em_nav" id="toogle_menu_7_5505">
                                                            <ul class="hnav em_menu_mobile">
                                                                <li class="menu-item-link menu-item-depth-0 fa fa-home menu-item-parent">
                                                                    <a class="em-menu-link" href="#"> <span> Home </span> </a>
                                                                    <ul class="menu-container">
                                                                        <li class="menu-item-hbox menu-item-depth-1 col-menu menu_col9 grid_18 menu-item-parent" style="">
                                                                            <ul class="menu-container">
                                                                                <li class="menu-item-vbox menu-item-depth-2 col-sm-12 menu-item-parent" style="">
                                                                                    <ul class="menu-container">
                                                                                        <li class="menu-item-text menu-item-depth-3  ">
                                                                                            <ul class="em-line-01">
                                                                                                <li>
                                                                                                    <h4>Layout styles</h4>
                                                                                                </li>
                                                                                                <li>
                                                                                                    <ul class="menu-link">
                                                                                                        <li><a href="/">Home Default</a>
                                                                                                        </li>
                                                                                                        <li><a href="#">Home Style 02</a>
                                                                                                        </li>
                                                                                                        <li><a href="#">Home Style 03</a>
                                                                                                        </li>
                                                                                                        <li><a href="#">Home Style 04</a>
                                                                                                        </li>
                                                                                                    </ul><!-- /.menu-link -->
                                                                                                </li>
                                                                                            </ul>
                                                                                        </li>
                                                                                    </ul>
                                                                                </li><!-- /.menu-item-vbox -->
                                                                                <li class="menu-item-vbox menu-item-depth-2 col-sm-12 menu-item-parent" style="">
                                                                                    <ul class="menu-container">
                                                                                        <li class="menu-item-text menu-item-depth-3  ">
                                                                                            <div class="em-line-01">
                                                                                                <h4>Header styles</h4>
                                                                                                <div>
                                                                                                    <ul class="menu-link">
                                                                                                        <li><a href="/">Header Style 01</a>
                                                                                                        </li>
                                                                                                        <li><a href="#">Header Style 02</a>
                                                                                                        </li>
                                                                                                        <li><a href="#">Header Style 04</a>
                                                                                                        </li>
                                                                                                        <li><a href="#">Header Style 03</a>
                                                                                                        </li>
                                                                                                    </ul>
                                                                                                </div>
                                                                                            </div>
                                                                                        </li>
                                                                                    </ul>
                                                                                </li><!-- /.menu-item-vbox -->
                                                                            </ul>
                                                                        </li>
                                                                    </ul>
                                                                </li><!-- /.menu-item-link -->
                                                                <li class="menu-item-link menu-item-depth-0 dd-menu-link fa fa-bars menu-item-parent">
                                                                    <a class="em-menu-link" href="#"> <span> Category </span> </a>
                                                                    <ul class="menu-container">
                                                                        <li class="menu-item-text menu-item-depth-1  ">
                                                                            <ul class="em-catalog-navigation vertical">
                                                                                <li class="level0 nav-1 first parent">
                                                                                    <a href="#"> <span>Furniture</span> </a>
                                                                                    <ul class="level0">
                                                                                        <li class="level1 nav-1-1 first">
                                                                                            <a href="#"> <span>Living Room</span> </a>
                                                                                        </li>
                                                                                        <li class="level1 nav-1-2 last">
                                                                                            <a href="#"> <span>Bedroom</span> </a>
                                                                                        </li>
                                                                                    </ul>
                                                                                </li><!-- /.nav-1 -->
                                                                                <li class="level0 nav-2 parent">
                                                                                    <a href="#"> <span>Electronics</span> </a>
                                                                                    <ul class="level0">
                                                                                        <li class="level1 nav-2-1 first">
                                                                                            <a href="#"> <span>Cell Phones</span> </a>
                                                                                        </li>
                                                                                        <li class="level1 nav-2-2 parent">
                                                                                            <a href="#"> <span>Cameras</span> </a>
                                                                                            <ul class="level1">
                                                                                                <li class="level2 nav-2-2-1 first">
                                                                                                    <a href="#"> <span>Accessories</span> </a>
                                                                                                </li>
                                                                                                <li class="level2 nav-2-2-2 last">
                                                                                                    <a href="#"> <span>Digital Cameras</span> </a>
                                                                                                </li>
                                                                                            </ul>
                                                                                        </li>
                                                                                        <li class="level1 nav-2-3 last parent">
                                                                                            <a href="#"> <span>Computers</span> </a>
                                                                                            <ul class="level1">
                                                                                                <li class="level2 nav-2-3-3 first">
                                                                                                    <a href="#"> <span>Build Your Own</span> </a>
                                                                                                </li>
                                                                                                <li class="level2 nav-2-3-4">
                                                                                                    <a href="#"> <span>Laptops</span> </a>
                                                                                                </li>
                                                                                                <li class="level2 nav-2-3-5">
                                                                                                    <a href="#"> <span>Hard Drives</span> </a>
                                                                                                </li>
                                                                                                <li class="level2 nav-2-3-6">
                                                                                                    <a href="#"> <span>Monitors</span> </a>
                                                                                                </li>
                                                                                                <li class="level2 nav-2-3-7">
                                                                                                    <a href="#"> <span>RAM / Memory</span> </a>
                                                                                                </li>
                                                                                                <li class="level2 nav-2-3-8">
                                                                                                    <a href="#"> <span>Cases</span> </a>
                                                                                                </li>
                                                                                                <li class="level2 nav-2-3-9">
                                                                                                    <a href="#"> <span>Processors</span> </a>
                                                                                                </li>
                                                                                                <li class="level2 nav-2-3-10 last">
                                                                                                    <a href="#"> <span>Peripherals</span> </a>
                                                                                                </li>
                                                                                            </ul>
                                                                                        </li>
                                                                                    </ul>
                                                                                </li><!-- /.nav-2 -->
                                                                                <li class="level0 nav-3 parent">
                                                                                    <a href="#"> <span>Apparel</span> </a>
                                                                                    <ul class="level0">
                                                                                        <li class="level1 nav-3-1 first">
                                                                                            <a href="#"> <span>Shirts</span> </a>
                                                                                        </li>
                                                                                        <li class="level1 nav-3-2 parent">
                                                                                            <a href="#"> <span>Shoes</span> </a>
                                                                                            <ul class="level1">
                                                                                                <li class="level2 nav-3-2-1 first">
                                                                                                    <a href="#"> <span>Mens</span> </a>
                                                                                                </li>
                                                                                                <li class="level2 nav-3-2-2 last">
                                                                                                    <a href="#"> <span>Womens</span> </a>
                                                                                                </li>
                                                                                            </ul>
                                                                                        </li>
                                                                                        <li class="level1 nav-3-3 last">
                                                                                            <a href="#"> <span>Hoodies</span> </a>
                                                                                        </li>
                                                                                    </ul>
                                                                                </li><!-- /.nav-3 -->
                                                                                <li class="level0 nav-4">
                                                                                    <a href="#"> <span>Fashion</span> </a>
                                                                                </li><!-- /.nav-4 -->
                                                                                <li class="level0 nav-5">
                                                                                    <a href="#"> <span>Shoes</span> </a>
                                                                                </li><!-- /.nav-5 -->
                                                                                <li class="level0 nav-6">
                                                                                    <a href="#"> <span>Glasses</span> </a>
                                                                                </li><!-- /.nav-6 -->
                                                                                <li class="level0 nav-7">
                                                                                    <a href="#"> <span>Baby</span> </a>
                                                                                </li><!-- /.nav-7 -->
                                                                                <li class="level0 nav-8">
                                                                                    <a href="#"> <span>Sport &amp; Outdoor</span> </a>
                                                                                </li><!-- /.nav-8 -->
                                                                                <li class="level0 nav-9">
                                                                                    <a href="#"> <span>Swatch</span> </a>
                                                                                </li><!-- /.nav-9 -->
                                                                                <li class="level0 nav-10">
                                                                                    <a href="#"> <span>Jewelry</span> </a>
                                                                                </li><!-- /.nav-10 -->
                                                                                <li class="level0 nav-11">
                                                                                    <a href="#"> <span>Home Garden</span> </a>
                                                                                </li><!-- /.nav-11 -->
                                                                                <li class="level0 nav-12">
                                                                                    <a href="#"> <span>Lingerie</span> </a>
                                                                                </li><!-- /.nav-12 -->
                                                                                <li class="level0 nav-13">
                                                                                    <a href="#"> <span>Beauty</span> </a>
                                                                                </li><!-- /.nav-13 -->
                                                                                <li class="level0 nav-14 last">
                                                                                    <a href="#"> <span>Game &amp; Movies</span> </a>
                                                                                </li><!-- /.nav-14 -->
                                                                            </ul><!-- /.em-catalog-navigation -->
                                                                        </li>
                                                                    </ul>
                                                                </li><!-- /.menu-item-link -->
                                                                <li class="menu-item-link menu-item-depth-0 fa fa-file menu-item-parent">
                                                                    <a class="em-menu-link" href="#"> <span> Products </span> </a>
                                                                    <ul class="menu-container">
                                                                        <li class="menu-item-hbox menu-item-depth-1 col-menu menu_col16 grid_16 menu-item-parent" style="">
                                                                            <ul class="menu-container">
                                                                                <li class="menu-item-vbox menu-item-depth-2 col-sm-8 grid_8 alpha menu-item-parent" style="">
                                                                                    <ul class="menu-container">
                                                                                        <li class="menu-item-text menu-item-depth-3  ">
                                                                                            <div class="em-line-01">
                                                                                                <h5 class="text-uppercase">Product Types</h5>
                                                                                                <div>
                                                                                                    <ul class="menu-container">
                                                                                                        <li class="menu-item-link menu-item-depth-1 first label-hot-menu"><a class="em-menu-link" href="product-simple.html">Simple product</a>
                                                                                                        </li>
                                                                                                        <li class="menu-item-link menu-item-depth-1"><a class="em-menu-link" href="product-virtual.html">Virtual Product</a>
                                                                                                        </li>
                                                                                                        <li class="menu-item-link menu-item-depth-1"><a class="em-menu-link" href="product-downloadable.html">Downloadable Product</a>
                                                                                                        </li>
                                                                                                        <li class="menu-item-link menu-item-depth-1"><a class="em-menu-link" href="product-configurable.html">Configurable Product</a>
                                                                                                        </li>
                                                                                                        <li class="menu-item-link menu-item-depth-1"><a class="em-menu-link" href="product-grouped.html">Grouped Product</a>
                                                                                                        </li>
                                                                                                        <li class="menu-item-link menu-item-depth-1 last"><a class="em-menu-link" href="product-bundle.html">Bundle Product</a>
                                                                                                        </li>
                                                                                                    </ul>
                                                                                                </div>
                                                                                            </div>
                                                                                        </li>
                                                                                    </ul>
                                                                                </li><!-- /.menu-item-vboxc -->
                                                                                <li class="menu-item-vbox menu-item-depth-2 col-sm-8 grid_8 omega menu-item-parent" style="">
                                                                                    <ul class="menu-container">
                                                                                        <li class="menu-item-text menu-item-depth-3  ">
                                                                                            <div class="em-line-01">
                                                                                                <h5 class="text-uppercase">PRODUCT COLUMNS</h5>
                                                                                                <div>
                                                                                                    <ul class="menu-container">
                                                                                                        <li class="menu-item-link menu-item-depth-1 first"><a class="em-menu-link" href="product-1-column.html">1 Column</a>
                                                                                                        </li>
                                                                                                        <li class="menu-item-link menu-item-depth-1 "><a class="em-menu-link" href="product-2-columns-left.html">2 Columns Left</a>
                                                                                                        </li>
                                                                                                        <li class="menu-item-link menu-item-depth-1 "><a class="em-menu-link" href="product-2-columns-right.html">2 Columns Right</a>
                                                                                                        </li>
                                                                                                        <li class="menu-item-link menu-item-depth-1 "><a class="em-menu-link" href="product-3-columns.html">3 Columns</a>
                                                                                                        </li>
                                                                                                        <li class="menu-item-link menu-item-depth-1 "><a class="em-menu-link" href="product-upsell.html">Upsell</a>
                                                                                                        </li>
                                                                                                        <li class="menu-item-link menu-item-depth-1 last"><a class="em-menu-link" href="product-related.html">Related Product</a>
                                                                                                        </li>
                                                                                                    </ul>
                                                                                                </div>
                                                                                            </div>
                                                                                        </li>
                                                                                    </ul>
                                                                                </li><!-- /.menu-item-vboxc -->
                                                                            </ul>
                                                                        </li>
                                                                    </ul>
                                                                </li><!-- /.menu-item-link -->
                                                            </ul>
                                                        </div>
                                                    </div><!-- /.megamenu-wrapper -->
                                                </div>
                                            </div><!-- /.em-top-menu -->
                                        </div>
                                    </div><!-- /.mobile-main-menu -->
                                    <div class="row mobile-block">
                                        <div class="col-sm-24">
                                            <ul class="em-mobile-help">
                                                <li><a href="#" target="_blank"><span class="fa fa-download">&nbsp;</span>Download App</a>
                                                </li>
                                                <li><a href="#"><span class="fa fa-question-circle">&nbsp;</span>Help Center</a>
                                                </li>
                                                <li><a href="#"><span class="fa fa-star">&nbsp;</span>Feedback</a>
                                                </li>
                                                <li><a href="#"><span class="fa fa-comment-o">&nbsp;</span>Blog</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div><!-- /.mobile-block -->
                                </div>
                            </div><!-- /.em-mheader-wrapper-menu -->
                        </div>
                    </div><!-- /#em-mheader-top -->
                    </div><!-- /#em-mheader -->
                    <div class="hidden-xs em-header-style08">
                        <div class="em-header-top">
                            <div class="container">
                                <div class="row">
                                    <div class="col-sm-24">
                                        <div class="f-left">
                                            <div class="em-language-currency">
                                                <div class="form-language toolbar-switch em-language-style01">
                                                    <div class="toolbar-title">
                                                        <select id="em-hoverUl-language" title="Your Language">
                                                            <option value="English" selected="selected">English</option>
                                                            <option value="French">French</option>
                                                            <option value="German">German</option>
                                                        </select>
                                                    </div>
                                                </div><!-- /.em-language-style01 -->
                                                <div class="toolbar-switch em-currency-style01">
                                                    <div class="toolbar-title">
                                                        <select id="em-hoverUl-currency" name="currency" title="Select Your Currency" onchange="setLocation(this.value)">
                                                            <option value="AUD"> AUD</option>
                                                            <option value="EUR"> EUR</option>
                                                            <option value="USD" selected="selected"> USD</option>
                                                        </select>
                                                    </div>
                                                </div><!-- /.em-currency-style01 -->
                                            </div><!-- /.em-language-currency -->
                                        </div><!-- /.f-left -->
                                        <div class="">
                                            <div class="em-search f-right">
                                                <div class="em-top-search">
                                                    <div class="em-wrapper-js-search em-search-style01">
                                                        <div class="em-wrapper-search em-no-category-search"> <a class="em-search-icon" title="Search" href="javascript:void(0);"><span>Search</span></a>
                                                            <div class="em-container-js-search" style="display: none;">
                                                                <form id="search_mini_form" method="get">
                                                                    <div class="form-search no_cate_search">
                                                                        <div class="text-search">
                                                                            <label for="search">Search:</label>
                                                                            <input id="search" type="text" name="q" value="" class="input-text" maxlength="128" placeholder="Search entire store here..." />
                                                                            <button type="submit" title="Search" class="button"><span><span>Search</span></span>
                                                                            </button>
                                                                        </div>
                                                                    </div>
                                                                </form><!-- /#search_mini_form -->
                                                            </div>
                                                        </div>
                                                    </div><!-- /.em-wrapper-js-search -->
                                                </div>
                                            </div><!-- /.em-search -->
                                            <div class="em-top-links">
                                                <div class="f-right"></div>
                                                <% if(user != null)
                                                    if(user.getAdmin())
                                                    out.print(" <ul class='list-inline f-right'> "+
                                                   " <li><a class='em-register-link' href='/admin/index.html' title='Register'>Admin Manager</a></li>"+
                                                "</ul>");    %>
                                            
                                                <ul class="list-inline f-right">
                                                    <li><a class="em-register-link" href="<% out.print(link2); %>" title="<% out.print(btn2); %>"><% out.print(btn2); %></a></li>
                                                </ul>
                                                <div id="em-login-link" class="account-link f-right em-non-login"> 
                                                    <a href="<% out.print(link1); %>" class="link-account" id="link-login" title="<% out.print(btn1); %>"><% out.print(btn1); %></a>
<!--                                            
                                                    <!-- /#em-account-login-form -->
                                                </div><!-- /#em-login-link -->
                                            </div><!-- /.em-top-links -->
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div><!-- /.em-header-top -->
                        <div id="em-fixed-top"></div>
                        <div class="em-header-bottom em-fixed-top">
                            <div class="container em-menu-fix-pos">
                                <div class="row">
                                    <div class="col-sm-24">
                                        <div class="em-logo f-left"><a href="/" title="Fashion Commerce" class="logo"><strong>Fashion Commerce</strong><img class="retina-img" src="/images/logo.png" alt="Fashion Commerce" /></a>
                                        </div>
                                        <div class="em-logo-sticky f-left">
                                            <a href="/" title="Fashion Commerce" class="logo"><img src="/images/logo_small.png" alt="Fashion Commerce" />
                                            </a>
                                        </div>
                                        <div class="em-search em-search-sticky f-right">
                                            <div class="em-top-search">
                                                <div class="em-wrapper-js-search em-search-style01">
                                                    <div class="em-wrapper-search"> <a class="em-search-icon" title="Search" href="javascript:void(0);"><span>Search</span></a>
                                                        <div class="em-container-js-search" style="display: none;">
                                                            <form id="search_mini_form_fixed_top" method="get">
                                                                <div class="form-search">
                                                                    <label for="search">Search:</label>
                                                                    <input id="search-fixed-top" type="text" name="q" value="" class="input-text" maxlength="128" placeholder="Search entire store here..." />
                                                                    <button type="submit" title="Search" class="button"><span><span>Search</span></span>
                                                                    </button>
                                                                </div>
                                                            </form>
                                                        </div>
                                                    </div>
                                                </div><!-- /.em-wrapper-js-search -->
                                            </div>
                                        </div><!-- /.em-search -->
                                        <div class="em-top-cart-sticky em-top-cart f-right">
                                            <div class="em-wrapper-js-topcart em-wrapper-topcart em-no-quickshop">
                                                <div class="em-container-topcart">
                                                    <div class="em-summary-topcart">
                                                        <a class="em-amount-js-topcart em-amount-topcart" title="Shopping Cart" href="/user/cart.jsp"> <span class="em-topcart-text">My Cart:</span> <span class="em-topcart-qty" id="numOfCart"><%= numOfCart%></span> </a>
                                                    </div>
                                                    <div class="em-container-js-topcart topcart-popup" style="display:none">
                                                        <div class="topcart-popup-content">
                                                            <p class="em-block-subtitle">Shopping Cart</p>
                                                            <div class="topcart-content">
                                                                <p class="amount-content "> Click to view Cart
                                                                </p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div><!-- /.em-wrapper-js-topcart -->
                                        </div><!-- /.em-top-cart -->
                                        <div class="em-menu-hoz f-right">
                                            <div id="em-main-megamenu">
                                                <div class="em-menu">
                                                    <div class="megamenu-wrapper wrapper-4_7164">
                                                        <div class="em_nav" id="toogle_menu_4_7164">
                                                            <ul class="hnav em_hoz_menu effect-menu">
                                                             <li class="menu-item-link menu-item-depth-0  menu-item-parent">
                                                                    <a class="em-menu-link" href="/"> <span> Home </span> </a>
                                                                  
                                                                </li>
                                                                <li class="menu-item-link menu-item-depth-0  menu-item-parent">
                                                                    <a class="em-menu-link" href="<% out.print(link2); %>"> <span><% out.print(btn2); %></span> </a>
                                                                 
                                                                </li><!-- /.menu-item-link -->
                                                                <li class="menu-item-link menu-item-depth-0  menu-item-parent">
                                                                    <a class="em-menu-link" href="<% out.print(link1); %>"> <span><% out.print(btn1); %></span> </a>
                                                              
                                                                </li><!-- /.menu-item-link -->
                                                              <!-- /.menu-item-link -->
                                                               
                                                            </ul><!-- /.hnav em_hoz_menu -->
                                                        </div><!-- /.em_nav -->
                                                    </div><!-- /.megamenu-wrapper -->
                                                </div><!-- /.em-menu -->
                                            </div><!-- /#em-main-megamenu -->
                                        </div><!-- /.em-menu-hoz -->
                                    </div>
                                </div>
                            </div><!-- /.container -->
                        </div><!-- /.em-header-bottom -->
                    </div>
                </div><!-- /.em-wrapper-header -->
