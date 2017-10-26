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
	  <p>
	    <label for="email"> Email:</label>
	    <input type="email" name="email" maxlength="75" value="<?= $_SESSION['presets']['email'] ?>" >
		<!--TODO javascript window pop up for rules on email-->
	  </p>
	  <p>
	    <label for="username"> Username:</label>
	    <input type="text" name="username" maxlength="75" value="<?= $_SESSION['presets']['username'] ?>" >
		<!--TODO javascript window pop up for rules on username-->
	  </p>
	  <p>
	    <label for="password"> Password: </label>
	    <input type="password" name="password" maxlength="75">
		<!--TODO javascript window pop up for rules on password-->
	  </p>
	  <p>
	    <label for="passwordMatch"> Confirm Password:</label>
	    <input type="password" name="passwordMatch" maxlength="75">
	  </p>
	  <input type="submit" value="Login">
	  </fieldset>
	</form>	

<?php
    require_once('BamFooter.php');
?>







