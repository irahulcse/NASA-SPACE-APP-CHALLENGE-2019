
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="emergency.aspx.cs" Inherits="Default4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   
    
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title> &mdash; Forest Fire</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Website Template by FreeHTML5.co" />
	<meta name="keywords" content="free website templates, free html5, free template, free bootstrap, free website template, html5, css3, mobile first, responsive" />
	<meta name="author" content="FreeHTML5.co" />



  	<!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
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


    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
   



</head>
<body>


    <div class="fh5co-loader"></div>
	
	<div id="page">
	<nav class="fh5co-nav" role="navigation">
		<div class="top-menu">
			<div class="container">
				<div class="row">
					<div class="col-xs-2">
						<div id="fh5co-logo"><a href="index.aspx">Fiery_OK<span>.</span></a></div>
					</div>
					<div class="col-xs-10 text-right menu-1">
						<ul>
							<li><a href="index.aspx">Home</a></li>
							<li class="active"><a href="realtimedata.aspx">Recent Incidents</a></li>
							
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
        </div>


     <form id="formm" runat="server">      
             <div class="text-left">
                  <h1 align="center">Your Location</h1></div>

<div id="googleMap" style="width:100%;height:400px;"></div>

         <div class="auto-style1">
             <br />
             <br />
</div>
         <div>
<script type="text/javascript">
function myMap() {

    if ("geolocation" in navigator) {
  // check if geolocation is supported/enabled on current browser
  navigator.geolocation.getCurrentPosition(
   function success(position) {
     // for when getting location is a success
     //console.log('latitude', position.coords.latitude, 
             //    'longitude', position.coords.longitude);
     var  lat= position.coords.latitude;
       var long = position.coords.longitude;
       H.value = lat;
       Hh.value = long;
       var mapProp =
       {
    center: {lat:lat,lng:long},
    zoom:10,

};
var map=new google.maps.Map(document.getElementById("googleMap"),mapProp);
 var marker = new google.maps.Marker({position: {lat:lat,lng:long}, map: map});
       marker.setMap(map);
        displayLocation(lat,long);
}
);
} 
}
    
    function displayLocation(latitude,longitude){
    var geocoder;
    geocoder = new google.maps.Geocoder();
    var latlng = new google.maps.LatLng(latitude, longitude);

    geocoder.geocode(
        {'latLng': latlng}, 
        function(results, status) {
            if (status == google.maps.GeocoderStatus.OK) {
                if (results[0]) {
                    var add= results[0].formatted_address ;
                    var  value=add.split(",");

                    count=value.length;
                    country=value[count-1];
                    state=value[count-2];
                    city = value[count - 3];
                    x.value = city;
                  console.log("city name is: " + city);
                }
                else {
                    console.log("address not found");
                }
            }
            else {
                console.log("Geocoder failed due to: " + status);
            }
        }
    );
}

</script>
             <br />
             <br />

             <br />
             <br />
             <br />
             <br />
</div>
                
         <div class="auto-style1">
             <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAUkDYIRWfMzlpP2DPDIilcq7MoaZu85ZY&callback=myMap" 
                 type="text/javascript">
              
             </script>
         </div>
                     
         <div style="width:1800px; margin:0 auto;">                
                              
            <div style="width:800px; margin:0 auto;">
&nbsp;&nbsp;
         Name:&nbsp; <asp:TextBox ID="TextBox1" runat="server" BackColor="Silver" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>   
             <br />
            <br />
             &nbsp; Email:&nbsp;&nbsp; <asp:TextBox ID="TextBox2" runat="server" Color="#ff0000" TextMode="Email"  BackColor="Silver" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
             <br />
             <br />
                    &nbsp;&nbsp; Mobile: <asp:TextBox ID="TextBox3" runat="server" TextMode="Phone" BackColor="Silver"></asp:TextBox>
         
             <br />
             <br />
             &nbsp;&nbsp;
             Upload Image of the incident:
                <asp:FileUpload ID="imgUpload" runat="server" BackColor="Silver" />                 
                 <br>
                 &nbsp;&nbsp;Complete Info:&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine" BackColor="Silver"></asp:TextBox>
             <br />
             <br />
        <asp:Button ID="Button1" runat="server" Text="SUBMIT" OnClick="Button1_Click" style="color: #FFFFFF; font-weight: 700; font-size: large; background-color: #FF0000; text-align: center;" />
                        
            <br />
         <asp:Label ID="lblResult" runat="server" ForeColor="#0066FF"></asp:Label>
             <br />
            
                </div>
           
                  
         <asp:HiddenField ID="H" runat="server" />
        <asp:HiddenField ID="Hh" runat="server" />
         <asp:HiddenField ID="x" runat="server" />
     
     
       
    </form>
  
	<script src="js/jquery.min.js"></script>
	<script src="js/jquery.easing.1.3.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.waypoints.min.js"></script>
	<script src="js/jquery.stellar.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/jquery.flexslider-min.js"></script>
	<script src="js/jquery.countTo.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/magnific-popup-options.js"></script>
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


