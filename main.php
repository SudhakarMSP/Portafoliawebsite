<?php 
 include("includes/nav.html");
 ?>
<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="css/nav.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
	<title>Image Slider</title>
</head>

<body>
	

	<div class="slideshow-container">


		<div class="mySlides fade">

			<img src="images/sld3.jpg" style="width:100%">
		</div>
		<div class="mySlides fade">

			<img src="images/sld4.jpg" style="width:100%">
		</div>

		<!-- next and prev button -->

		<div class="btn">
			<a class="prev" onclick="plusSlides(-1)">❮</a>
			<a class="prev" onclick="plusSlides(1)">❯</a>

		</div>

	</div>
	<script src="includes/app.js"></script><br />
	<div class="text">
		<h2>INTERNSHIP MANAGMENT PORTAL AIMS TO</h2><br /><br />
		<div class="points">
			<ul>
				<li>it is now convient for them to look for an internship online because they don't have to go on the
					actual company to apply</li>
				<li>the online internship managment portal also benifits the employers,because they can post or provide
					vacancy for an internship</li>
				<li>in this online internship managment portal the user can be either a student(internship seeker) or
					employer(internship provider)</li>
				<li>IMP is a bridge between internship seekers and provider</li>
				<li>companies/business through the internship will ease the process of discovering talents and fitting
					the culture of the company/business and increase entity's productivity</li>
			</ul>
		</div>
	</div>
</body>

</html>