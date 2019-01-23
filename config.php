<?php
	session_start();
	$servername = "localhost";
	$username = "root";
	$password = "";
	$dbname = "Rachunkowosc";

	//Nawiązanie połączenia
    $conn = new mysqli($servername, $username, $password, $dbname);
	mysqli_set_charset($conn,"utf8");
	//Test połączenia
	if ($conn->connect_error) 
	{
		die("Connection failed: " . $conn->connect_error);
	}
	else 
	{
		$_SESSION['connection'] = $conn;
	}
?>