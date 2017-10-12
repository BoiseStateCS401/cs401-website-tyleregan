<?php

  $thisPage = "BamParkour";
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
        </li>
      </ul>
    </section>
	
    <section class="Topics">
	  <ul>
        <li><a href="BamParkourTechniques.php">Locations</a></li>
        <li><a href="BamParkourTechniques.php">Techniques</a></li>
		<li><a href="BamParkourTechniques.php">Meet Ups</a></li>
      </ul>
    </section>
	
<?php
    require_once('BamFooter.php');
?>







