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
					<li><a href="">Style</a></li>
					<li><a href="">Latest</a></li>
				</ul></li>
			<li><a href="login">Login</a></li>
			<li><a href="memberShip.obj">Become Member</a></li>
			<li><a href="register">Register</a></li>
			<li><a href="FileUploadForm">FileUpload</a></li>
			<li><a href="products">Product</a></li>
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


</body>
</html>