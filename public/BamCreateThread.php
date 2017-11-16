<?php
	require_once("BamSessionHelper.php");
	session_start();
  
	$_SESSION['Thread'] = "BamCreateThread";
	$_SESSION['Level'] = 5;
	require_once('BamHeader.php');
	require_once('BamForumNavBar.php');
?>
    <section class = "Title">
	  <p id = "MiniTitle">
        Create Thread
      </p>
    </section>

    <section class="NewPost">
      <form> <!--action="/action_page.php"-->
	    Title: <input type="text" name="Post">
		<br>
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




