<?php
	session_start();
	require_once("Dao.php");
	$dao = new Dao();

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
	} else if(!$dao->checkEmail($email)){
		var_dump($email);
		$errors['email'] = "No account associated with this email.";
		$valid = 0;
	}

	if($valid){
		if(strlen($password) < 6){
			$errors['password'] = "Too short, must be more than 6 characters.";
			$valid = 0;
		} else if(strlen($password) > 75){
			$errors['password'] = "Too long, must be less than 76 characters.";
			$valid = 0;
		} else if(!$dao->checkPassword($email, $password)){
			$errors['password'] = "Incorrect password.";
			$valid = 0;
		}
	}


	if($valid){
		header('Location: BamHome.php');
		$_SESSION['user'] = getUserTitle($email);
	} else {
		$_SESSION['errors'] = $errors;
		$_SESSION['presets'] = array('email' => htmlspecialchars($email));
		header('Location: BamLogin.php');
	}
?>