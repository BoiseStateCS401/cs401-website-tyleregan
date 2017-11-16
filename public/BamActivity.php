<?php
	require_once("BamSessionHelper.php");
	session_start();
  
	$_SESSION['Topic'] = $_GET['Activity'];
	$_SESSION['Level'] = 3;
	require_once('BamHeader.php');
	require_once('BamForumNavBar.php');
?>
		<section class="Topics">
			<ul>
				<li><a href="BamActivityThreadList.php?Activity=<?php echo $_SESSION['Topic'] ?>&List=Locations">Locations</a></li>
				<li><a href="BamActivityThreadList.php?Activity=<?php echo $_SESSION['Topic'] ?>&List=Techniques">Techniques</a></li>
				<li><a href="BamActivityThreadList.php?Activity=<?php echo $_SESSION['Topic'] ?>&List=Meet Ups">Meet Ups</a></li>
			</ul>
		</section>
	
<?php
    require_once('BamFooter.php');
?>