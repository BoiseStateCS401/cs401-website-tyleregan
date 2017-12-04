<?php
	require_once("BamSessionHelper.php");
	session_start();
	if($_SESSION['previousPage'] === "BamSignUp.php"){
		clearErrors();
	}
  
	$_SESSION['previousPage'] = "BamLogin";
	require_once('BamHeader.php');
?>

		<p class = "Title">Login</p>
		<hr>
	
		<form class="Info" method="POST" action="BamLoginHandler.php" autocomplete="off">
			<p>
				<label for="email"> Email:</label>
				<input type="email" name="email" maxlength="75" value="<?php if(isset($_SESSION['presets']['email'])){ echo $_SESSION['presets']['email']; } ?>"
				<?php displayError('email'); ?>
				<!--TODO javascript window pop up for rules on email-->
			</p>
			<p>
				<label for="password"> Password: </label>
				<input type="password" name="password">
				<?php displayError('password'); ?>
				<!--TODO javascript window pop up for rules on password-->
			</p>
			<input type="submit" value="Login">
		</form>	

<?php
    require_once('BamFooter.php');
?>