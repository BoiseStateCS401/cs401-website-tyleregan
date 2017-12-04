<?php
	require_once("Dao.php");
	require_once("BamSessionHelper.php");
	session_start();
  
	$_SESSION['previousPage'] = "BamMajorThreadList.php";
	$_SESSION['Topic'] = $_GET['Major'];
	$_SESSION['List'] = $_GET['List'];
	$_SESSION['Level'] = 4;
	
	$dao = new Dao();
	$result = $dao->getAbbr($_SESSION['Topic']);
	$_SESSION['Abbr'] = $result[0];
	
	require_once('BamHeader.php');
	require_once('BamForumNavBar.php');
	
	if($_SESSION['user'] !== "Guest"){
?>
		<section class = "CreateThread">
			<h4>
				<a href="BamCreateThread.php">Create Thread</a>
			</h4>
		</section>
<?php } ?>
	
		<section class = "Threads">
			<ul>
				<li>
					<?php $result = $dao->getMainThreads();
					foreach($result as $row) {
						$Thread = $row['thread'];
					?>
					<a href="BamPosts.php?Thread=<?php echo $Thread ?>"><?php echo $Thread?></a>
					<?php }	?>
				</li>
			</ul>
		</section>
<?php
    require_once('BamFooter.php');
?>