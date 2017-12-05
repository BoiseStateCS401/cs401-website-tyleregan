<?php
	require_once("BamSessionHelper.php");
	session_start();
  
	$_SESSION['previousPage'] = "BamActivity.php";
	$_SESSION['Table'] = $_GET['Activity'];
	$_SESSION['Level'] = 3;
	require_once('BamHeader.php');
	require_once('BamForumNavBar.php');
?>
		<section class="Topics">
			<ul>
				<li><a href="BamActivityThreadList.php?Activity=<?php echo $_SESSION['Table'] ?>&List=Locations">Locations</a></li>
				<li><a href="BamActivityThreadList.php?Activity=<?php echo $_SESSION['Table'] ?>&List=Techniques">Techniques</a></li>
				<li><a href="BamActivityThreadList.php?Activity=<?php echo $_SESSION['Table'] ?>&List=Meet Ups">Meet Ups</a></li>
			</ul>
		</section>
	
<?php
    require_once('BamFooter.php');
?>