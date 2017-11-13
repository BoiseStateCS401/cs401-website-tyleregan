<?php
require_once("../database/config.php");
class Dao
{
	/**
	 * Creates and returns a PDO connection using the database connection
	 * url specified in the CLEARDB_DATABASE_URL environment variable.
	 */
	private function getConnection()
	{
		$url = parse_url(getenv("CLEARDB_DATABASE_URL"));

		$host = $url["host"];
		$db   = substr($url["path"], 1);
		$user = $url["user"];
		$pass = $url["pass"];

		$conn = new PDO("mysql:host=$host;dbname=$db;", $user, $pass);

		// Turn on exceptions for debugging. Comment this out for
		// production or make sure to use try-catch statements.
		$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

		return $conn; 
	}
	/**
	 * Returns the database connection status string.
	 */
	public function getConnectionStatus()
	{
		$conn = $this->getConnection();
		return $conn->getAttribute(constant("PDO::ATTR_CONNECTION_STATUS"));
	}
	
	public function getAllRows()
	{
		$conn = $this->getConnection();
		$stmt =  $conn->query("SELECT * FROM topics");
		return $stmt->fetchAll();
	}
	
	public function getRow($email)
	{
		$conn = $this->getConnection();
		//Placeholder
		$query = "SELECT * FROM test WHERE email = :email";
		//Statement
		$stmt = $conn->prepare($query);
		//Bind
		$stmt = bindParam(':email', $email);
		//Execute
		$stmt->execute();
		//Return
		return $stmt->fetchAll();
	}
	
	public function addRow($email)
	{
		$conn = $this->getConnection();
		//Placeholder
		$query = "INSERT INTO test (email) VALUES (:email)";
		//Statement
		$stmt = $conn->prepare($query);
		//Bind
		$stmt->bindParam('email', $email);
		//Execute
		$stmt->execute();
	}
	
	
}









