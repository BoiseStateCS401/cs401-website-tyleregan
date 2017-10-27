<?php
  session_start();

//Get variables
$email = $_POST['email'];
$password = $_POST['password'];
$errors = array();

//Initalize valid.
$valid = 1;

if(strpos($email, '@u.boisestate.edu') != (strlen($email) - 17)){
	$errors['email'] = "Must be a boisestate student email.";
	$valid = 0;
} else if(strlen($email) > 75){
	$errors['email'] = "Too long, must be less than 76 characters.";
	$valid = 0;
} else if($email != 'root@u.boisestate.edu'){
	$errors['email'] = "Only 1 email is valid at this time and this is not it.";
	$valid = 0;
}

if(strlen($password) < 6){
	$errors['password'] = "Too short, must be more than 6 characters.";
	$valid = 0;
} else if(strlen($password) > 75){
	$errors['password'] = "Too long, must be less than 76 characters.";
	$valid = 0;
} else if(!($password == 'rootroot')){
	$errors['password'] = "Only 1 password is valid at this time and this is not it.";
	$valid = 0;
}


if($valid){
	header('Location: BamHome.php');
} else {
	$_SESSION['errors'] = $errors;
	$_SESSION['presets'] = array('email' => htmlspecialchars($email));
	header('Location: BamLogin.php');
}
?>
