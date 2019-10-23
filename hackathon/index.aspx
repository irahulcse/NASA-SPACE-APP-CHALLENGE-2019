<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    


    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Forest Fire &mdash; </title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Free HTML5 Website Template by FreeHTML5.co" />
    <meta name="keywords" content="free website templates, free html5, free template, free bootstrap, free website template, html5, css3, mobile first, responsive" />
    <meta name="author" content="FreeHTML5.co" />
    
    <meta property="og:title" content="" />
    <meta property="og:image" content="" />
    <meta property="og:url" content="" />
    <meta property="og:site_name" content="" />
    <meta property="og:description" content="" />
    <meta name="twitter:title" content="" />
    <meta name="twitter:image" content="" />
    <meta name="twitter:url" content="" />
    <meta name="twitter:card" content="" />
    <link href="https://fonts.googleapis.com/css?family=Work+Sans:300,400,500,700,800" rel="stylesheet">

    <!-- Animate.css -->
    <link rel="stylesheet" href="css/animate.css">
    <!-- Icomoon Icon Fonts-->
    <link rel="stylesheet" href="css/icomoon.css">
    <!-- Bootstrap  -->
    <link rel="stylesheet" href="css/bootstrap.css">
    <!-- Magnific Popup -->
    <link rel="stylesheet" href="css/magnific-popup.css">
    <!-- Owl Carousel  -->
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <!-- Flexslider  -->
    <link rel="stylesheet" href="css/flexslider.css">
    <!-- Theme style  -->
    <link rel="stylesheet" href="css/style.css">
    <!-- Modernizr JS -->
    <script src="js/modernizr-2.6.2.min.js"></script>
    <!-- FOR IE9 below -->
    <!--[if lt IE 9]>
    <script src="js/respond.min.js"></script>
    <![endif]-->
</head>
<body>

    <div class="fh5co-loader"></div>

    <div id="page">
        <nav class="fh5co-nav" role="navigation">
            <div class="top-menu">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-2">
                            <div id="fh5co-logo"><a href="index.html">Fiery_OK<span>.</span></a></div>
                        </div>
                        <div class="col-xs-10 text-right menu-1">
                            <ul>
                                <li class="active"><a href="index.aspx">Home</a></li>
                                <li><a href="realtimedata.aspx">Recent Incidents</a></li>

                                <li><a href="about.aspx">About</a></li>
                                <li><a href="contact.aspx">Contact</a></li>
                                <li class="btn-cta"><a href="login.aspx"><span>Login</span></a></li>
                                <li class="btn-cta"><a href="emergency.aspx"><span>Emergency</span></a></li>
                                <li class="btn-cta"><a href="register.aspx"><span>Sign Up</span></a></li>
                            </ul>
                        </div>
                    </div>

                </div>
            </div>
        </nav>
        <aside id="fh5co-hero" class="js-fullheight">
            <div class="flexslider js-fullheight">
                <ul class="slides">
                    <li style="background-image: url(images/nasa/45.jpg);">
                        <div class="overlay-gradient"></div>
                        <div class="container">
                            <div class="row">
                                <div class="col-md-8 col-md-offset-2 text-center js-fullheight slider-text">
                                    <div class="slider-text-inner">
                                        <h1>Fast fire hazard detection and verification</h1>
                                       
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li style="background-image: url(images/nasa/46.jpg);">
                        <div class="overlay-gradient"></div>
                        <div class="container">
                            <div class="row">
                                <div class="col-md-8 col-md-offset-2 text-center js-fullheight slider-text">
                                    <div class="slider-text-inner">
                                        <h1>Alert to people and officials present near the incident within fraction of minutes</h1>
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li style="background-image: url(images/nasa/47.jpg);">
                        <div class="overlay-gradient"></div>
                        <div class="container">
                            <div class="row">
                                <div class="col-md-8 col-md-offset-2 text-center js-fullheight slider-text">
                                    <div class="slider-text-inner">
                                        <h1>Powered by most trusted space agency in the world:NASA</h1>
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </aside>
        <div id="fh5co-counter" class="fh5co-counters fh5co-bg-section">
            <div class="container">
                <div class="row">
                    <div class="col-md-3 text-center animate-box">
                        <span class="icon"><i class="icon-tree"></i></span>
                        <span class="fh5co-counter js-counter" data-from="0" data-to="27539" data-speed="5000" data-refresh-interval="50"></span>
                        <span class="fh5co-counter-label">Forest Fire</span>
                    </div>
                    <div class="col-md-3 text-center animate-box">
                        <span class="icon"><i class="icon-bell"></i></span>
                        <span class="fh5co-counter js-counter" data-from="0" data-to="15862" data-speed="5000" data-refresh-interval="50"></span>
                        <span class="fh5co-counter-label">Cases Reported</span>
                    </div>
                    <div class="col-md-3 text-center animate-box">
                        <span class="icon"><i class="icon-home"></i></span>
                        <span class="fh5co-counter js-counter" data-from="0" data-to="2340" data-speed="5000" data-refresh-interval="50"></span>
                        <span class="fh5co-counter-label">Properties Saved</span>
                    </div>
                    <div class="col-md-3 text-center animate-box">
                        <span class="icon"><i class="icon-users"></i></span>
                        <span class="fh5co-counter js-counter" data-from="0" data-to="9863" data-speed="5000" data-refresh-interval="50"></span>
                        <span class="fh5co-counter-label">People saved</span>
                    </div>
                </div>
            </div>
        </div>

        <div id="fh5co-content">
            <div class="video fh5co-video" style="background-image: url(images/video.jpg);">
                <iframe width="760" height="620" src="https://www.youtube.com/embed/bhvjfC5qenQ" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>

            </div>
            <div class="choose animate-box">
                <div class="fh5co-heading">
                    <h2>2017 Forest Fire Reports</h2>
                    <p>Research published by NASA states "climate change has increased fire risk in many regions", but caused "greater severity in the colder latitudes" where boreal and temperate forests exist, and scholars have described "a warm weather fluctuation that has become more frequent in recent decades" related to wildfires, without naming any particular event as being directly caused by global warming. </p>
                </div>
                <div class="progress">
                    <div style="width:100%">
                        9,781,062 Acres Burned
                    </div>
                </div>
                <div class="progress">
                    <div style="width:100%">
                        66,131 Number of Fires took place
                    </div>
                </div>
                <div class="progress">
                    <div style="width:100%">
                        147.9 Acres burned per Fire
                    </div>
                </div>
                <div class="progress">
                    <div style="width:100%">
                        More than 10000 properties destroyed
                    </div>
                </div>
            </div>
        </div>
        <div id="fh5co-practice" class="fh5co-bg-section">
            <div class="container">
                <div class="row animate-box">
                    <div class="col-md-8 col-md-offset-2 text-center fh5co-heading">
                        <h2>How We Work</h2>
                        <p>Our website is not about providing any service but reporting the wildfire incidents to the officials and share the informmation as soon as possible so that more and more lives can be saved. </p>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4 text-center animate-box">
                        <div class="services">
                            <span class="icon">
                                <i class="icon-location"></i>
                            </span>
                            <div class="desc">
                                <h3><a href="emergency.aspx">Real Time Location</a></h3>
                                <p>We will get the real time location when the incident will be uploaded so that we can take care of the incident.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 text-center animate-box">
                        <div class="services">
                            <span class="icon">
                                <i class="icon-eye"></i>
                            </span>
                            <div class="desc">
                                <h3>Satellite Imagery</h3>
                                <p>We are will get the satellite view of the location as soon as it will be tracked and then the incident will be verified.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 text-center animate-box">
                        <div class="services">
                            <span class="icon">
                                <i class="icon-mobile"></i>
                            </span>
                            <div class="desc">
                                <h3>Contact Share</h3>
                                <p>The reporter of the incident will be contacted by the nearby officials ,i.e, firefighters, police etc. as the contact details will be shared by us.</p>
                            </div>
                        </div>
                    </div>

                    <div class="gototop js-top">
                        <a href="#" class="js-gotop"><i class="icon-arrow-up"></i></a>
                    </div>

                    <!-- jQuery -->
                    <script src="js/jquery.min.js"></script>
                    <!-- jQuery Easing -->
                    <script src="js/jquery.easing.1.3.js"></script>
                    <!-- Bootstrap -->
                    <script src="js/bootstrap.min.js"></script>
                    <!-- Waypoints -->
                    <script src="js/jquery.waypoints.min.js"></script>
                    <!-- Stellar Parallax -->
                    <script src="js/jquery.stellar.min.js"></script>
                    <!-- Carousel -->
                    <script src="js/owl.carousel.min.js"></script>
                    <!-- Flexslider -->
                    <script src="js/jquery.flexslider-min.js"></script>
                    <!-- countTo -->
                    <script src="js/jquery.countTo.js"></script>
                    <!-- Magnific Popup -->
                    <script src="js/jquery.magnific-popup.min.js"></script>
                    <script src="js/magnific-popup-options.js"></script>
                    <!-- Main -->
                    <script src="js/main.js"></script>
                     <script type="text/javascript">
      /* NOTE : Use web server to view HTML files as real-time update will not work if you directly open the HTML file in the browser. */
      (function(d, m){
        var kommunicateSettings = {"appId":"212c672c7416478349262ab0d4dc8823c","popupWidget":true,"automaticChatOpenOnNavigation":true};
        var s = document.createElement("script"); s.type = "text/javascript"; s.async = true;
        s.src = "https://widget.kommunicate.io/v2/kommunicate.app";
        var h = document.getElementsByTagName("head")[0]; h.appendChild(s);
        window.kommunicate = m; m._globals = kommunicateSettings;
      })(document, window.kommunicate || {});
        </script>
</body>
</html>
