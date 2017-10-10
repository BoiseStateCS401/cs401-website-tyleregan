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
	    <p><a href="BamLogin.php">Login</a> &nbsp;
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

    <section id="HomePic">
      <a href="BamActivities.php">
      <img src="images/BamActivities.jpg" width="40%" height="30%"></a> &ensp;
      <a href="BamMajors.php">
      <img src="images/BamMajors.jpg" width="40%" height="30%"></a> &ensp;
    </section>

<?php    /*<footer>BAM Forums&copy;</footer>

  </body>
</html>*/
require_once('BamFooter.php');
?>








