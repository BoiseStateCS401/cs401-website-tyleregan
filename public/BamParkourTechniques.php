<?php

  $thisPage = "BamRules";
  require_once('BamHead.php');
  require_once('BamNavBar.php');
  require_once('BamHeader.php');
  /*require_once('BamForumNavBar.php');*/
?>
    
    <section class="NavBar">
	  <ul>
        <li class="history">
          <a href="BamHome.php">Home</a>
          <strong>&lsaquo;<strong>
          <a href="BamActivities.php">Activites</a>
		  <strong>&lsaquo;<strong>
		  <a href="BamParkour.php">Parkour</a>
		  <strong>&lsaquo;<strong>
		  <a href="BamParkourTechniques.php">Techniques</a>
        </li>
      </ul>
    </section>
	
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








