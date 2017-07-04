<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
<title>Contact</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Tutoring Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="css/style.css" rel='stylesheet' type='text/css' />
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.js"></script>
<!---- start-smoth-scrolling---->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
				});
			});
		</script>
<!--start-smoth-scrolling-->
</head>
<body>
	<!--start-header-->
	<div class="header" id="home">
		<nav class="navbar navbar-default">
			<div class="container-fluid">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="index.html"><img src="images/logo.png" alt="" /></a>
			</div>
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li class="active"><a href="index.html" class="hvr-bounce-to-top">Home <span class="sr-only">(current)</span></a></li>
					<li><a href="about.html" class="hvr-bounce-to-top">About</a></li>
					<li><a href="services.html" class="hvr-bounce-to-top">Services</a></li>
					<li><a href="typo.html" class="hvr-bounce-to-top">Typo</a></li>
					<li><a href="contact.html" class="hvr-bounce-to-top">Contact</a></li>
				</ul>
				<div class="clearfix"></div>
			</div><!-- /.navbar-collapse -->
			</div><!-- /.container-fluid -->
		</nav>
	</div>
	<!--end-header-->
	<!--start-contact-->
	<div class="map">
		<div class="container">
			<div class="map-top heading">
				<h1>how to find us</h1>
			</div>
			<div class="map-bottom">
				<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d80478.53306167186!2d5.31346505!3d50.924565!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47c12183ded75db7%3A0xf7cb7b027e7e2181!2sHasselt%2C+Belgium!5e0!3m2!1sen!2sin!4v1435227092642" frameborder="0" style="border:0" allowfullscreen></iframe>
			</div>
		</div>
	</div>
	<!--end-contact-->
	<!--start-contact-->
	<div class="contact">
		<div class="container">
			<div class="contact-top heading">
				<h2>CONTACT FORM</h2>
				<p>Ut in pharetra enim. Donec condimentum euismod lorem dictum finibus. Suspendisse potenti. Nullam ac finibus ligula. Cras ac volutpat turpis, luctus egestas velit. Suspendisse tristique eleifend malesuada.  Vestibulum et dolor sed tortor tristique posuere ac vitae felis.</p>
			</div>
			<div class="contact-bottom"> 
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!--end-contact-->
	<!--start-footer-->
	<div class="footer">
		<div class="container">
			<div class="footer-main">
				<div class="clearfix"></div>
			</div>
		</div>
		<script type="text/javascript">
									$(document).ready(function() {
										/*
										var defaults = {
								  			containerID: 'toTop', // fading element id
											containerHoverID: 'toTopHover', // fading element hover id
											scrollSpeed: 1200,
											easingType: 'linear' 
								 		};
										*/
										
										$().UItoTop({ easingType: 'easeOutQuart' });
										
									});
								</script>
		<a href="#home" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
	</div>
	<!--end-footer-->
</body>
</html>