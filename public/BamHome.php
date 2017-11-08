<?php
	require_once("BamSessionHelper.php");
	session_start();
  
	$thisPage = "BamHome";
	require_once('BamHeader.php');
?>

		<section id="HomePic">
			<a href="BamActivities.php">
			<img src="images/BamActivities.jpg" width="40%" height="30%"></a> &ensp;
			<a href="BamMajors.php">
			<img src="images/BamMajors.jpg" width="40%" height="30%"></a> &ensp;
		</section>

<?php
    require_once('BamFooter.php');
?>








