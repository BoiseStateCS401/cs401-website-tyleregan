<?php
	require_once("BamSessionHelper.php");
	session_start();
  
	$thisPage = "BamSubActivity";
	require_once('BamHeader.php');
?>
    
		<section class="NavBar">
			<ul>
				<li class="history">
					<a href="BamHome.php">Home</a>
					<strong>&lsaquo;<strong>
					<a href="BamActivities.php">Activites</a>
					<strong>&lsaquo;<strong>
					<a href="BamParkour.php">Parkour</a>
				</li>
			</ul>
		</section>
	
		<section class="Topics">
			<ul>
				<li><a href="BamActivityThreads.php">Locations</a></li>
				<li><a href="BamActivityThreads.php">Techniques</a></li>
				<li><a href="BamActivityThreads.php">Meet Ups</a></li>
			</ul>
		</section>
	
<?php
    require_once('BamFooter.php');
?>