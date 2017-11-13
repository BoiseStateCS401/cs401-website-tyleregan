<?php
	require_once("BamSessionHelper.php");
	session_start();
  
	$thisTopic = "Activity";
	$thisPage = "BamActivity";
	$thisActivity = $_GET['Activity'];
	$thisLevel = 3;
	require_once('BamHeader.php');
	require_once('BamForumNavBar.php');
?>
		<section class="Topics">
			<ul>
				<li><a href="BamActivityThreadList.php?Activity=<?php echo $thisActivity ?>&List=Locations">Locations</a></li>
				<li><a href="BamActivityThreadList.php?Activity=<?php echo $thisActivity ?>&List=Techniques">Techniques</a></li>
				<li><a href="BamActivityThreadList.php?Activity=<?php echo $thisActivity ?>&List=Meet Ups">Meet Ups</a></li>
			</ul>
		</section>
	
<?php
    require_once('BamFooter.php');
?>