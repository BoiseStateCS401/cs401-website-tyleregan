<?php
	require_once("BamSessionHelper.php");
	session_start();
  
	$thisTopic = "Activity";
	$thisPage = "BamCreateThread";
	$thisActivity = $_GET['Activity'];
	$thisList = $_GET['List'];
	$thisLevel = 5;
	require_once('BamHeader.php');
?>
    
    <section class="NavBar">
      <ul>
        <li class="history">
          <a href="BamHome.php">Home</a>
          <strong>&lsaquo;<strong>
          <a href="BamMajors.php">Majors</a>
          <strong>&lsaquo;<strong>
          <a href="BamComputerScience.php">Computer Science</a>
          <strong>&lsaquo;<strong>
          <a href="BamCS400s.php">CS400s</a>
		  <strong>&lsaquo;<strong>
		  <a href="BamRules.php">Create Thread</a>
        </li>
      </ul>
    </section>
	
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




