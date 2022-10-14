<!doctype html>
<html lang="en">
<head>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Header Title</title>
<link rel="icon" type="image/png" href="/favicon.ico">

<!--Google Font link-->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Raleway:400,600,700" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">

<link rel="stylesheet" href="/assets/css/slick.css">
<link rel="stylesheet" href="/assets/css/slick-theme.css">
<link rel="stylesheet" href="/assets/css/animate.css">
<link rel="stylesheet" href="/assets/css/fonticons.css">
<link rel="stylesheet" href="/assets/css/font-awesome.min.css">
<link rel="stylesheet" href="/assets/css/bootstrap.css">
<link rel="stylesheet" href="/assets/css/magnific-popup.css">
<link rel="stylesheet" href="/assets/css/bootsnav.css">

<!--For Plugins external css-->
<!--<link rel="stylesheet" href="/assets/css/plugins.css" />-->

<!--Theme custom css -->
<link rel="stylesheet" href="/assets/css/style.css">
<!--<link rel="stylesheet" href="/assets/css/colors/maron.css">-->

<!--Theme Responsive css-->
<link rel="stylesheet" href="/assets/css/responsive.css" />

<script src="/assets/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
</head>
<body>
	<nav
		class="navbar navbar-light navbar-expand-lg  navbar-fixed white no-background bootsnav">
		<!-- Start Top Search -->
		<div class="top-search">
			<div class="container">
				<div class="input-group">
					<span class="input-group-addon"><i class="fa fa-search"></i></span>
					<input type="text" class="form-control" placeholder="Search">
					<span class="input-group-addon close-search"><i	class="fa fa-times"></i></span>
				</div>
			</div>
		</div>
		<!-- End Top Search -->

		<div class="container">
			<!-- Start Atribute Navigation -->
			<div class="attr-nav">
				<ul>
					<!-- <li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown"> <i class="fa fa-shopping-bag"></i> <span
							class="badge">3</span>
					</a>
						<ul class="dropdown-menu cart-list">
							<li><a href="#" class="photo"><img
									src="/assets/images/thumb01.jpg" class="cart-thumb" alt="" /></a>
								<h6>
									<a href="#">Delica omtantur </a>
								</h6>
								<p class="m-top-10">
									2x - <span class="price">$99.99</span>
								</p></li>
							<li><a href="#" class="photo"><img
									src="/assets/images/thumb01.jpg" class="cart-thumb" alt="" /></a>
								<h6>
									<a href="#">Delica omtantur </a>
								</h6>
								<p class="m-top-10">
									2x - <span class="price">$99.99</span>
								</p></li>
							<li><a href="#" class="photo"><img
									src="/assets/images/thumb01.jpg" class="cart-thumb" alt="" /></a>
								<h6>
									<a href="#">Delica omtantur </a>
								</h6>
								<p class="m-top-10">
									2x - <span class="price">$99.99</span>
								</p></li>
							-- More List --
							<li class="total"><span class="pull-right"><strong>Total</strong>:
									$0.00</span> <a href="#" class="btn btn-cart">Cart</a></li>
						</ul></li> -->
					<li class="search">
						<a href="#"><i class="fa fa-search"></i></a>
					</li>
					<li class="side-menu">
						<a href="#"><i class="fa fa-bars"></i></a>
					</li>
				</ul>
			</div>
			<!-- End Atribute Navigation -->

			<!-- Start Header Navigation -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbar-menu">
					<span></span> <span></span> <span></span>
				</button>

				<a class="navbar-brand" href="#brand"> 
					<img src="/assets/images/logo.png" class="logo logo-display m-top-10" alt=""> <img src="/assets/images/logo.jpg" class="logo logo-scrolled" alt="">
				</a>
			</div>
			<!-- End Header Navigation -->

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse" id="navbar-menu">
				<ul class="nav navbar-nav navbar-right" data-in="fadeInDown" data-out="fadeOutUp">
					<li><a href="#hello">헬로</a></li>
					<li><a href="#about">어바웃</a></li>
					<li><a href="#service">service</a></li>
					<li><a href="#portfolio">portfolio</a></li>
					<li><a href="#pricing">pricing</a></li>
					<%--<li><a href="#blog">Blog</a></li>
						<li><a href="#contact">Contact</a></li>--%>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>


		<!-- Start Side Menu -->
		<div class="side">
			<a href="#" class="close-side"><i class="fa fa-times"></i></a>
			<div class="widget">
				<h6 class="title">Custom Pages</h6>
				<ul class="link">
					<li><a href="#">About</a></li>
					<li><a href="#">Services</a></li>
					<li><a href="#">Blog</a></li>
					<li><a href="#">Portfolio</a></li>
					<li><a href="#">Contact</a></li>
				</ul>
			</div>
			<div class="widget">
				<h6 class="title">Additional Links</h6>
				<ul class="link">
					<li><a href="#">Retina Homepage</a></li>
					<li><a href="#">New Page Examples</a></li>
					<li><a href="#">Parallax Sections</a></li>
					<li><a href="#">Shortcode Central</a></li>
					<li><a href="#">Ultimate Font Collection</a></li>
				</ul>
			</div>
		</div>
		<!-- End Side Menu -->
	</nav>

	<!--Home Sections-->

	<section id="hello" class="home bg-mega">
		<div class="overlay"></div>
		<div class="container">
			<div class="row">
				<div class="main_home">
					<div class="home_text">
						<h1 class="text-white">
							메인 <br /> 이미지 들어갈 곳(나중에 메인페이지로 옮겨야댐..)
						</h1>
					</div>
					<div class="home_btns m-top-40">
						<a href="https://bootstrapthemes.co" target="_blank" class="btn btn-primary m-top-20">버튼1</a> 
						<a href="https://bootstrapthemes.co" target="_blank" class="btn btn-default m-top-20">버튼2</a>
					</div>

				</div>
			</div>
			<!--End off row-->
		</div>
		<!--End off container -->
	</section>
	<!--End off Home Sections-->
	<!-- JS includes -->

	<script src="/assets/js/vendor/jquery-1.11.2.min.js"></script>
	<script src="/assets/js/vendor/popper.min.js"></script>
	<script src="/assets/js/vendor/bootstrap.min.js"></script>

	<script src="/assets/js/jquery.magnific-popup.js"></script>
	<script src="/assets/js/jquery.easing.1.3.js"></script>
	<script src="/assets/js/slick.min.js"></script>
	<script src="/assets/js/jquery.collapse.js"></script>
	<script src="/assets/js/bootsnav.js"></script>
	<!-- paradise slider js -->

	<script src="http://maps.google.com/maps/api/js?key=AIzaSyD_tAQD36pKp9v4at5AnpGbvBUsLCOSJx8"></script>
	<script src="/assets/js/gmaps.min.js"></script>

	<script>
		function showmap() {
			var mapOptions = {
				zoom : 8,
				scrollwheel : false,
				center : new google.maps.LatLng(-34.397, 150.644),
				mapTypeId : google.maps.MapTypeId.ROADMAP
			};
			var map = new google.maps.Map(
					document.getElementById('map_canvas'), mapOptions);
			$('.mapheight').css('height', '350');
			$('.maps_text h3').hide();
		}
	</script>
	<script src="/assets/js/plugins.js"></script>
	<script src="/assets/js/main.js"></script>
</body>