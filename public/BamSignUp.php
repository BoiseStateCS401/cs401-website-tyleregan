<?php
  session_start();

  $thisPage = "BamSignUp";
  require_once('BamHead.php');
  require_once('BamNavBar.php');
  require_once('BamHeader.php');
  /*require_once('BamForumNavBar.php');*/
?>

    <p class = "Title">Sign Up</p>
	<hr>
	
	<form method="POST" action="BamLoginHandler.php" autocomplete="off">
	  <fieldset>
	  <legend>This is the Legend</legend>
	  <p>
	    <label for="email"> Email:</label>
	    <input type="email" name="Email" maxlength="75" value="<?= $_SESSION['presets']['email'] ?>" >
		<!--TODO javascript window pop up for rules on email-->
	  </p>
	  <p>
	    <label for="username"> Username:</label>
	    <input type="text" name="Username" maxlength="75" value="<?= $_SESSION['presets']['username'] ?>" >
		<!--TODO javascript window pop up for rules on username-->
	  </p>
	  <p>
	    <label for="password"> Password: </label>
	    <input type="password" name="Password" maxlength="75">
		<!--TODO javascript window pop up for rules on password-->
	  </p>
	  <p>
	    <label for="passwordMatch"> Confirm Password:</label>
	    <input type="password" name="passwordMatch" maxlength="75">
	  </p>
	  <input type="submit" value="Login">
	</form>	

<?php
    require_once('BamFooter.php');
?>







