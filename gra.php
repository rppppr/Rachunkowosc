<?php
	require_once('class.php');
	require_once('config.php');

	$tablicaWszystkichPytan = [];
	
	//Stworzenie zmiennej przechowującej zapytanie do bazy
	$sql = "SELECT * FROM Dane WHERE Status = 'Zaakceptowane'";
	
	//Stworzenie zmiennej przechowującej wynik zapytania z bazy
	$result = $_SESSION['connection']->query($sql);
	
	
	$i = 0;
	
	if ($result->num_rows > 0) 
	{
		while($row = $result->fetch_assoc()) 
		{
			$id = $row['ID'];
			$pytanie = $row['Pytanie'];
			$a = $row['OdpowiedzA'];
			$b = $row['OdpowiedzB'];
			$c = $row['OdpowiedzC'];
			$d = $row['OdpowiedzD'];
			$tablicaWszystkichPytan[$i] = new Pytanie($id,$pytanie,$a,$b,$c,$d);
			$i++;
		}
	}
	$_SESSION['dane'] = $tablicaWszystkichPytan;
?>