<?php
	require_once("BamSessionHelper.php");
	require_once("Dao.php");
	session_start();
	$dao = new Dao();
  
	$_SESSION['Thread'] = $_GET['Thread'];
	$_SESSION['Level'] = 5;
	require_once('BamHeader.php');
	require_once('BamForumNavBar.php');
	
	$result = $dao->getMainPosts("Rules for Posts");
	foreach($result as $row) {
		$_SESSION['poster'] = $row['poster'];
		$_SESSION['postDate'] = $row['postDate'];
		$_SESSION['postContent'] = $row['postContent'];
	}
?>
		<section class = "Title">
			<p id = "MiniTitle">
				<?php echo $_SESSION['Thread'] ?>
			</p>
		</section>
	
		<section class = "Posts collapsible">
			<section class = "PostHeader">
				<article class = "PosterInfo"> <!--Left side-->
					<p>
						<?php echo $_SESSION['poster'] ?>
					</p>
					<!--Can I do images? -->
					<!-- <img src="images/BamMajors.jpg" alt="UserIcon" width="80%" height="80%"> -->
					<p id = "SubPosterInfo">
						Title: TODO <br>
						Major: TODO <br>
						Posts: TODO 
					</p>
				</article>
	  
				<article class = "PostInfo"> <!--Right side-->
					<p>
						by <?php echo $_SESSION['poster'] ?>
						on <?php echo $_SESSION['postDate'] ?>
					</p>
				</article>
			</section>
			<section class = "PostContent">
					<p>
					<?php echo $_SESSION['postContent'] ?>
					</p>
			</section>
		</section>

		<section class="NewPost">
			<form> <!--action="/action_page.php"-->
				Post: <input type="text" name="Post">
				<br>
				TL;DR: <input type="text" name="TLDR">
				<br><br>
				<input type="submit" value="Submit">
			</form>
		</section>
	
<?php
    require_once('BamFooter.php');
?>







