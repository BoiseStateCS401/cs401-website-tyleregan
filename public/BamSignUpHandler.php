<?php
  session_start();
  require_once("Dao.php");
  $dao = new Dao();

  //Get variables
  $email = $_POST['email'];
  $username = $_POST['username'];
  $password = $_POST['password'];
  $passwordMatch = $_POST['passwordMatch'];
  $errors = array();

  //Initalize valid.
  $valid = 1;

  //Check the email for requirements
	if(strpos($email, '@u.boisestate.edu') != (strlen($email) - 17)){
		$errors['email'] = "Must be a boisestate student email.";
		$valid = 0;
	} else if(strlen($email) > 75){
		$errors['email'] = "Too long, must be less than 76 characters.";
		$valid = 0;
	} else if($dao->checkEmail($email)){
		$errors['email'] = "This email already exists. Contact support if someone else is using your account.";
		$valid = 0;
	}

  //Check the username for requirements.
  if(strlen($username) < 4){
		$errors['username'] = "Too short, must be more than 3 characters.";
		$valid = 0;
  } else if(strlen($username) > 75){
		$errors['username'] = "Too long, must be less than 76 characters.";
		$valid = 0;
  }

  //Check the password for requirements.
	if(strlen($password) < 6){
		$errors['password'] = "Too short, must be more than 6 characters.";
		$valid = 0;
	} else if(strlen($password) > 75){
		$errors['password'] = "Too long, must be less than 76 characters.";
		$valid = 0;
	}
  
  //Check if passwords match.
  if($password != $passwordMatch){
	$errors['passwordMatch'] = "Your passwords did not match.";
	$valid = 0;
  }

	if($valid){
		$dao->addUser($email, $password, $username);
		header('Location: BamWelcome.php');
  } else {
	$_SESSION['errors'] = $errors;
	$_SESSION['presets'] = array('email' => htmlspecialchars($email),
								 'username' => htmlspecialchars($username));
	header('Location: BamSignUp.php');
  }
?>