<?php
  echo "Found file";
  session_start();

  //Get variables
  $email = $_POST['email'];
  $username = $_POST['username'];
  $password = $_POST['password'];
  $passwordMatch = $_POST['passwordMatch'];
  $errors = array();

  //Initalize valid.
  $valid = true;

  echo "Starting validation";
  validateEmail($email);
  validateUsername($username);
  validatePassword($password);
  confirmPassword($passwordMatch);

  //Checks the email for each requirement.
  function validateEmail($field){
	if(strpos($field, '@u.boisestate.edu') == false){
		$emailError = "Must be a boisestate student email.";
		$valid = false;
	} else if(strlen($field) > 75){
		$emailError = "Too long, must be less than 76 characters.";
		valid = false;
	} else if(!($field == 'root@u.boisestate.edu')){
		$emailError = "Only 1 email is valid at this time and this is not it.";
		valid = false;
	}
  }
  
  //Checks the username for each requirement.
  function validateUsername($field){
	if(strlen($field) < 4){
		$emailError = "Too short, must be more than 3 characters.";
		$valid = false;
	} else if(strlen($field) > 75){
		$emailError = "Too long, must be less than 76 characters.";
		valid = false;
	}
  }

  //Checks the password for each requirement.
  function validatePassword($field){
	if(strlen($field) < 6){
		$emailError = "Too short, must be more than 6 characters.";
		$valid = false;
	} else if(strlen($field) > 75){
		$emailError = "Too long, must be less than 76 characters.";
		valid = false;
	} else if(!($field == 'rootroot')){
		$emailError = "Only 1 password is valid at this time and this is not it.";
		valid = false;
	}
  }
  
  //Checks if passwords match.
  function confirmPassword($field){
	if(!($password == $field_){
		$emailError = "Your passwords did not match.";
		$valid = false;
	}
  }

  echo "Redirecting";
  /*if($valid){
	header{'Location: BamAccountless.php'};
  } else {
	$_SESSION['errors'] = $errors;
	$_SESSION['presets'] = array('email' => htmlspecialchars($email),
								 'username' => htmlspecialchars($username));
	header{'Location: BamSignUp.php'};
  }*/
?>
