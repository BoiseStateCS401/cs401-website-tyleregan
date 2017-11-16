<?php
	require_once("Dao.php");
	$dao = new Dao();
	echo $dao->getConnectionStatus();
	$result = $dao->getAbbr("Computer Science");
	echo "<br>";
	echo $result[0];