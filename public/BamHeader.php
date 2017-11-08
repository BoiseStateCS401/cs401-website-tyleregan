<!doctype html>
<html lang="en">
	<head>
		<title>BAM Forums&copy;</title>
		<link href="css/BamStyle.css" rel="stylesheet" type="text/css" />
		<link rel="icon" type="image/png" href="images/BAM.png">
		<script src="js/BamJS.js"></script>
	</head>
  
	<body>
		<aside class="Profile">
			<nav>
				<p>
				<?php if(checkLogin() === "Guest"){ ?>
					<a href="BamHome.php">Home</a> &nbsp;
					<a href="BamLogin.php">Login</a> &nbsp;
					<a href="BamSignUp.php">Sign Up</a>
				<?php } else if(checkLogin() === "Member"){ ?>
					<a href="BamHome.php">Home</a> &nbsp;
					<a href="BamLogout.php">Login</a>
				<?php } else { ?>
					ERROR: Not guest or member.
				<?php } ?>
				</p>
			</nav>
		</aside>

		<header>
			<p>
				Boise state
				<br>
				Activities and
				<br>
				Majors
			</p>
		</header>