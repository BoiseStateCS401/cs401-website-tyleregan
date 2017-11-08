<?php
	require_once("BamSessionHelper.php");
	session_start();
  
	$thisPage = "BamMajorThreads";
	require_once('BamHeader.php');
?>
    
		<section class="NavBar">
			<ul>
				<li class="history">
					<a href="BamHome.php">Home</a>
					<strong>&lsaquo;<strong>
					<a href="BamMajors.php">Majors</a>
					<strong>&lsaquo;<strong>
					<a href="BamComputerScience.php">Computer Science</a>
					<strong>&lsaquo;<strong>
					<a href="BamCS400s.php">CS400s</a>
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