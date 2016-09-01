<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Landing</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>


<style>
.carousel-inner>.item>img, .carousel-inner>.item>a>img {
	width: 70%;
	margin: auto;
}
</style>
</head>

<body
	background="http://roa.h-cdn.co/assets/15/20/980x490/landscape-1431700488-cwc-2162.jpg">
	<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="#">FootBazzar</a>
		</div>
		<ul class="nav navbar-nav">
			<li class="active"><a href="#">Home</a></li>
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#">Collections<span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="brand">Brand</a></li>
					<li><a href="  ">Style</a></li>
					<li><a href="  ">Latest</a></li>
				</ul></li>
			<li><a href="login">Login</a></li>
			<li><a href="reg">Register</a></li>
			<li><a href="  ">Cart Items</a></li>
		</ul>
	</div>
	</nav>
	<div class="header">
		<h1>Move Ahead...</h1>
	</div>
	<div class="row">
		<div class="col-4">...</div>
		<div class="col-10">...</div>
	</div>
	<div class="row">
		<div class="col-4">...</div>
		<div class="col-10">...</div>
	</div>
	<div class="row">
		<div class="col-4">...</div>
		<div class="col-10">...</div>
	</div>
	<div id="myCarousel" class="carousel slide">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li class="item1 active"></li>
			<li class="item2"></li>
			<li class="item3"></li>

		</ol>

		<!-- Wrapper for slides -->
		<div class="carousel-inner" role="listbox">

			<div class="item active">
				<img
					src="http://img6a.flixcart.com/image/shoe/7/p/m/biking-red-35952608-puma-8-400x400-imaecyd9nah2rnpg.jpeg"
					alt="bt1" width="400" height="400">
				<div class="carousel-caption">
					<h3>Casual Shoes</h3>
					<p>Wear the color that suits you</p>
				</div>
			</div>

			<div class="item">
				<img
					src="http://img6a.flixcart.com/image/shoe/8/q/n/black-kss83-blk-kiosha-9-400x400-imae84ws7nwhcppc.jpeg"
					alt="bt2" width="400" height="400">
				<div class="carousel-caption">
					<h3>Formal Shoes</h3>
					<p>Feel like a professional</p>
				</div>
			</div>

			<div class="item">
				<img
					src="http://img5a.flixcart.com/image/shoe/f/u/z/flat-grey-blk-silver-wht-electrify-speed-reebok-7-400x400-imaej83esxmkrwzs.jpeg"
					alt="bt3" width="400" height="400">
				<div class="carousel-caption">
					<h3>Sports Shoes</h3>
					<p>Be like an athlete</p>
				</div>
			</div>



		</div>

		<!-- Left and right controls -->
		<a class="left carousel-control" href="#myCarousel" role="button">
			<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
			<span class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#myCarousel" role="button">
			<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>
	</div>

	<script>
		$(document).ready(function() {
			// Activate Carousel
			$("#myCarousel").carousel();

			// Enable Carousel Indicators
			$(".item1").click(function() {
				$("#myCarousel").carousel(0);
			});
			$(".item2").click(function() {
				$("#myCarousel").carousel(1);
			});
			$(".item3").click(function() {
				$("#myCarousel").carousel(2);
			});
			$(".item4").click(function() {
				$("#myCarousel").carousel(3);
			});

			// Enable Carousel Controls
			$(".left").click(function() {
				$("#myCarousel").carousel("prev");
			});
			$(".right").click(function() {
				$("#myCarousel").carousel("next");
			});
		});
	</script>
	<br>
	</br>
	<div class="container">
		<div class="row">
			<div class="col-md-10">
				<div class="col-xs-3">
					<div class="thumbnail">

						<img
							src="http://img6a.flixcart.com/image/shoe/r/z/b/903-15a8core1001i-united-colors-of-benetton-42-400x400-imaehc6egmevbxwm.jpeg"
							class="img-responsive"> <br> </br>
						<div class="caption">
							<div class="row">
								<div class="col-md-10 col-xs-10">
									<h3>FootBazzar</h3>
								</div>
							</div>

							<div class="row">
								<div class="col-md-10 col-xs-10 price">

									<h3>
										<hr>
										<label>Rs.1,499</label>
									</h3>
									<hr>
								</div>
							</div>


							<p>
							<ul>
								<li>Men Casuals</li>
								<li>Light Weight</li>
							</ul>
							</p>


							<div class="row">
								<div class="col-md-5">
									<a href="#" class="btn btn-success btn-product"><span
										class="glyphicon glyphicon-shopping-cart"></span> Add to cart</a>
								</div>
							</div>

							<p>Wear the one that suits you well</p>
						</div>

					</div>
				</div>
				<div class="col-xs-3">
					<div class="thumbnail">
						<img
							src="http://img5a.flixcart.com/image/shoe/b/u/s/black-ss81-sam-stefy-8-400x400-imae84y2rjjw2fsh.jpeg"
							class="img-responsive">
						<div class="caption">
							<div class="row">
								<div class="col-md-10 col-xs-10">
									<h3>FootBazzar</h3>
								</div>
							</div>

							<div class="row">
								<div class="col-md-10 col-xs-10 price">

									<h3>
										<hr>
										<label>Rs.2,599</label>
									</h3>
									<hr>
								</div>
							</div>

							<p>
							<ul>
								<li>Men Formals</li>
								<li>Profesional Look</li>
							</ul>
							</p>


							<div class="row">
								<div class="col-md-5">
									<a href="#" class="btn btn-success btn-product"><span
										class="glyphicon glyphicon-shopping-cart"></span> Add to cart</a>
								</div>
							</div>

							<p>Be cool as like a professional</p>
						</div>

					</div>
				</div>
				<div class="col-xs-3">
					<div class="thumbnail">
						<img
							src="http://img5a.flixcart.com/image/shoe/5/v/r/slvr-wht-flt-gry-red-blk-ar1078-reebok-10-400x400-imaegnzdzydvztxg.jpeg"
							class="img-responsive"> <br> <br>

						<div class="caption">
							<div class="row">
								<div class="col-md-10 col-xs-10">
									<h3>FootBazzar</h3>
								</div>
							</div>

							<div class="row">
								<div class="col-md-10 col-xs-10 price">

									<h3>
										<hr>
										<label>Rs.1,859</label>
									</h3>
									<hr>
								</div>
							</div>

							<p>
							<ul>
								<li>Sports Shoes</li>
								<li>Be sporty always</li>
							</ul>
							</p>


							<div class="row">
								<div class="col-md-5">
									<a href="#" class="btn btn-success btn-product"><span
										class="glyphicon glyphicon-shopping-cart"></span> Add to cart</a>
								</div>
							</div>

							<p>Mark your way through this. A step ahead.</p>

						</div>

					</div>
				</div>
				<div class="col-xs-3">
					<div class="thumbnail">

						<img
							src="http://img6a.flixcart.com/image/shoe/m/n/9/black-zio-star-6667-zio-star-37-400x400-imaeawctahryagnh.jpeg"
							class="img-responsive"> <br> <br>
						<div class="caption">
							<div class="row">
								<div class="col-md-10 col-xs-10">
									<h3>FootBazzar</h3>
								</div>
							</div>

							<div class="row">
								<div class="col-md-10 col-xs-10 price">

									<h3>
										<hr>
										<label>Rs.1,155</label>
									</h3>
									<hr>
								</div>
							</div>


							<p>
							<ul>
								<li>Women Shoes</li>
								<li>Easy wearable</li>
							</ul>
							</p>


							<div class="row">
								<div class="col-md-5">
									<a href="#" class="btn btn-success btn-product"><span
										class="glyphicon glyphicon-shopping-cart"></span> Add to cart</a>
								</div>
							</div>

							<p>Feel like a queen. As you really are.</p>
						</div>

					</div>
				</div>


			</div>
		</div>
	</div>
	</div>

	</div>

</body>
</html>