<?php

  $thisPage = "BamLogin";
  require_once('BamHead.php');
  require_once('BamNavBar.php');
  require_once('BamHeader.php');
  /*require_once('BamForumNavBar.php');*/
?>

    <p class = "Title">Login</p>
	<hr>
	
	<form> <!--action="/action_page.php"-->
	  Email: <input type="text" name="Email">
	  <br>
	  Password: <input type="text" name="Password">
	  <br><br>
	  <input type="submit" value="Submit">
	</form>	

<?php
    require_once('BamFooter.php');
?>






