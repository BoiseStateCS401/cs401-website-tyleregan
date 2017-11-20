<?php
	require_once("BamSessionHelper.php");
	require_once("Dao.php");
	session_start();
	$dao = new Dao();
  
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