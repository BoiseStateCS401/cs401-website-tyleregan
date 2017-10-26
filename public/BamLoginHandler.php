<?php
  session_start();

//Get variables
$email = $_POST['email'];
$password = $_POST['password'];
$errors = array();

//Initalize valid.
$valid = true;

validateEmail($email);
validatePassword($password);

function validateEmail($field){
	if(strpos($field, '@u.boisestate.edu') == false){
		$errors['email'] = "Must be a boisestate student email.";
		$valid = false;
	} else if(strlen($field) > 75){
		$errors['email'] = "Too long, must be less than 76 characters.";
		valid = false;
	} else if(!($field == 'root@u.boisestate.edu')){
		$errors['email'] = "Only 1 email is valid at this time and this is not it.";
		valid = false;
	}
}

function validatePassword($field){
	if(strlen($field) < 6){
		$errors['password'] = "Too short, must be more than 6 characters.";
		$valid = false;
	} else if(strlen($field) > 75){
		$errors['password'] = "Too long, must be less than 76 characters.";
		valid = false;
	} else if(!($field == 'rootroot')){
		$errors['password'] = "Only 1 password is valid at this time and this is not it.";
		valid = false;
	}
}

if($valid){
	header{'Location: BamHome.php'};
} else {
	$_SESSION['errors'] = $errors;
	$_SESSION['presets'] = array('email' => htmlspecialchars($email));
	header{'Location: BamLogin.php'};
}
?>