<?php
	session_start();
	require_once("Dao.php");
	$dao = new Dao();

    //Get variables
    $post = $_POST['Post'];
    $tldr = $_POST['TLDR'];
	if(isset($_POST['Thread'])){
		$_SESSION['Thread'] = $_POST['Thread'];
	}
    $errors = array();

    //Initalize valid.
    $valid = 1;

    //Check if the post was empty
	if(strlen($post) == 0){
		$valid = 0;
	}
	
	//Add post
	if($valid){
		date_default_timezone_set('America/Boise');
		$date = date('Y-m-d H:i:s');
		$dao->addPost($_SESSION['Topic'], $_SESSION['Thread'], $_SESSION['Thread'], $_SESSION['name'], $date, $post);
		$_SESSION['previousPage'];
		header('Location: BamHome.php'); //How do I go to the previous page?
	} else {
		$_SESSION['errors'] = $errors;
		header('Location: BamHome.php');
	}
?>