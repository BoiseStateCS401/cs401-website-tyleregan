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
	
	/**
	* Returns the abbreviation/table name for the provided topic.
	*/
	public function getAbbr($Topic)
	{
		$conn = $this->getConnection();
		//Placeholder
		$query = "SELECT abbr FROM Topics WHERE name = (:topic)";
		//Statement
		$stmt = $conn->prepare($query);
		//Bind
		$stmt->bindParam("topic", $Topic);
		//Execute
		$stmt->execute();
		//Return
		return $stmt->fetch();
	}
	
	/**
	* Returns the main threads. The ones on all tables.
	*/
	public function getMainThreads()
	{
		$conn = $this->getConnection();
		//Placeholder
		$query = "SELECT thread FROM AllThreads";
		//Statement
		$stmt = $conn->prepare($query);
		//Execute
		$stmt->execute();
		//Return
		return $stmt->fetchAll();
	}
	
	/**
	* Returns the threads for this table/topic and subtopic.
	*/
	public function getThreads($table, $subTopic)
	{
		$conn = $this->getConnection();
		//Placeholder
		$query = "SELECT thread FROM (:table) WHERE subTopic = (:subTopic)";
		//Statement
		$stmt = $conn->prepare($query);
		//Bind
		$stmt->bindParam("table", $topic);
		$stmt->bindParam("subTopic", $subTopic);
		//Execute
		$stmt->execute();
		//Return
		return $stmt->fetchAll();
	}
	
	/**
	* Returns the posts from the provided thread from the main threads table.
	*/
	public function getMainPosts($thread)
	{
		$conn = $this->getConnection();
		//Placeholder
		$query = "SELECT poster, postDate, postContent FROM AllThreads WHERE thread = (:thread)";
		//Statement
		$stmt = $conn->prepare($query);
		//Bind
		$stmt->bindParam("thread", $thread);
		//Execute
		$stmt->execute();
		//Return
		return $stmt->fetchAll();
	}
	
	/**
	* Returns the posts for this table/topic and subtopic.
	*/
	public function getPosts($table, $thread)
	{
		$conn = $this->getConnection();
		//Placeholder
		$query = "SELECT poster, postDate, postContent FROM (:table) WHERE thread = (:thread)";
		//Statement
		$stmt = $conn->prepare($query);
		//Bind
		$stmt->bindParam("table", $topic);
		$stmt->bindParam("thread", $thread);
		//Execute
		$stmt->execute();
		//Return
		return $stmt->fetchAll();
	}
	
	public function addUser($email, $password, $name, $title)
	{
		$conn = $this->getConnection();
		//Placeholder
		$query = "INSERT INTO users (email, password, name, title) VALUES ((:email), (:password), (:name), (:title))";
		//Statement
		$stmt = $conn->prepare($query);
		//Bind
		$stmt->bindParam("email", $email);
		$stmt->bindParam("password", $password);
		$stmt->bindParam("name", $name);
		$stmt->bindParam("title", $title);
		//Execute
		$stmt->execute();
	}
	
	
}









