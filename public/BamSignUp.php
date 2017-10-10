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
		  <a href="BamHome.php">Home</a>
		  <a href="BamLogin.php">Login</a>
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

    <p class = "Title">Sign Up</p>
	<hr>
	
	<form> <!--action="/action_page.php"-->
	  Email: <input type="text" name="Email">
	  <br>
	  Password: <input type="text" name="Password">
	  <br><br>
	  <input type="submit" value="Submit">
	</form>	

     <footer>BAM Forums&copy;</footer>

  </body>
</html>








