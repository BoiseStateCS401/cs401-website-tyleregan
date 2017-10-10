<?php
/*<!doctype html>
<html>

  <head>

    <title>BAM Forums&copy;</title>
    <link href="css/BamStyle.css" rel="stylesheet" type="text/css" />
    <link rel="icon" type="image/png" href="images/BAM.png">
  </head>

  <body>
    <aside class="Profile">
      <nav>
        <p>
           <a href="BamLogin.php">Login</a> &nbsp;
           <a href="BamSignUp.php">Sign Up</a>
        </p>
      </nav>
    </aside>
  
    <header>
      <p>
        Boise state
      <br>
        Activities and
      <br>
        Majors
      </p>
    </header>*/

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
          <a href="BamMajors.php">Majors</a>
          <strong>&lsaquo;<strong>
          <a href="BamComputerScience.php">Computer Science</a>
          <strong>&lsaquo;<strong>
          <a href="BamCS400s.php">CS400s</a>
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

 
	
    <footer>BAM Forums&copy;</footer>

  </body>
</html>








