<?php
	require_once("BamSessionHelper.php");
	session_start();
  
	$thisPage = "BamActivityThreads";
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
					<strong>&lsaquo;<strong>
					<a href="BamParkourTechniques.php">Techniques</a>
				</li>
			</ul>
		</section>
	
		<section class = "CreateThread">
			<h4>
				<a href="BamCreateThread.php">Create Thread</a>
			</h4>
		</section>
	
		<section class = "Threads">
			<ul>
				<li>
					<a href="BamRules.php">Rules for Posts</a>
				</li>
			</ul>
		</section>
	
<?php
    require_once('BamFooter.php');
?>