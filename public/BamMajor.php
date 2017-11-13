<?php
	require_once("BamSessionHelper.php");
	session_start();
  
	$thisTopic = "Major";
	$thisPage = "BamMajor";
	$thisMajor = $_GET['Major'];
	$thisLevel = 3;
	require_once('BamHeader.php');
	require_once('BamForumNavBar.php');
?>	
		<section class="Topics">
			<ul>
				<li><a href="BamMajorThreadList.php?Major=<?php echo $thisMajor ?>&List=CS100s">CS100s</a></li>
				<li><a href="BamMajorThreadList.php?Major=<?php echo $thisMajor ?>&List=CS200s">CS200s</a></li>
				<li><a href="BamMajorThreadList.php?Major=<?php echo $thisMajor ?>&List=CS300s">CS300s</a></li>
				<li><a href="BamMajorThreadList.php?Major=<?php echo $thisMajor ?>&List=CS400s">CS400s</a></li>
				<li><a href="BamMajorThreadList.php?Major=<?php echo $thisMajor ?>&List=Project Ideas">Project Ideas</a></li>
				<li><a href="BamMajorThreadList.php?Major=<?php echo $thisMajor ?>&List=Other">Other</a></li>
			</ul>
		</section>
<?php
    require_once('BamFooter.php');
?>