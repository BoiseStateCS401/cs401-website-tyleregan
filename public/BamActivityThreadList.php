<?php
	require_once("BamSessionHelper.php");
	session_start();
  
	$_SESSION['Topic'] = $_GET['Activity'];
	$_SESSION['List'] = $_GET['List'];
	$_SESSION['Level'] = 4;
	require_once('BamHeader.php');
	require_once('BamForumNavBar.php');
?>
	
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