<?php
	require_once("BamSessionHelper.php");
	session_start();
  
	$thisPage = "BamSubMajor";
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
				</li>
			</ul>
		</section>
		
		<section class="Topics">
			<ul>
				<li><a href="BamMajorThreads.php">CS100s</a></li>
				<li><a href="BamMajorThreads.php">CS200s</a></li>
				<li><a href="BamMajorThreads.php">CS300s</a></li>
				<li><a href="BamMajorThreads.php">CS400s</a></li>
				<li><a href="BamMajorThreads.php">Project Ideas</a></li>
				<li><a href="BamMajorThreads.php">Other</a></li>
			</ul>
		</section>
<?php
    require_once('BamFooter.php');
?>