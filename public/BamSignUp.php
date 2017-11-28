<?php
	require_once("BamSessionHelper.php");
	session_start();
  
	$thisPage = "BamSignUp";
	require_once('BamHeader.php');
?>

		<p class = "Title">Sign Up</p>
		<hr>
	
		<form class="Info" method="POST" action="BamSignUpHandler.php" autocomplete="off">
			<p>
				<label for="email"> Email:</label>
				<input type="email" name="email" maxlength="75" value="<?php if(isset($_SESSION['presets']['email'])){ $_SESSION['presets']['email']; } ?>" >
				<?php displayError('email'); ?>
				<!--TODO javascript window pop up for rules on email-->
			</p>
			<p>
				<label for="username"> Username:</label>
				<input type="text" name="username" maxlength="75" value="<?php if(isset($_SESSION['presets']['username'])){ echo $_SESSION['presets']['username']; } ?>" >
				<?php displayError('username'); ?>
				<!--TODO javascript window pop up for rules on username-->
			</p>
			<p>
				<label for="password"> Password: </label>
				<input type="password" name="password" maxlength="75">
				<?php displayError('password'); ?>
				<!--TODO javascript window pop up for rules on password-->
			</p>
			<p>
				<label for="passwordMatch"> Confirm Password:</label>
				<input type="password" name="passwordMatch" maxlength="75">
				<?php displayError('passwordMatch'); ?>
			</p>
			<input type="submit" value="Login">
		</form>	

<?php
    require_once('BamFooter.php');
?>