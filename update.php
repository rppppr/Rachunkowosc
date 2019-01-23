<?php
	require_once('config.php');
	//Stworzenie zmiennej przechowującej zapytanie do bazy
	$sql = "UPDATE Dane SET Pytanie='".$_POST['pytanie']."',OdpowiedzA='".$_POST['a']."',OdpowiedzB='".$_POST['b']."',OdpowiedzC='".$_POST['c']."'
	,OdpowiedzD='".$_POST['d']."',Status='".$_POST['status']."' WHERE ID ='".$_POST['id']."'";
	
	
	//Test poprawności zapytania i jednoczesne wykonanie go (próba wykonania)
	if ($_SESSION['connection']->query($sql) === TRUE) 
	{
		echo "Pomyślnie zaktualizowano rekord";
	} 
	else 
	{
		echo "Niestety, przy aktualizacji wystąpił błąd: " . $_SESSION['connection']->error;
	}
	echo "<form action=\"main.php\"><input type=\"submit\" value=\"Powrót do strony głównej\"></form>";

	$_SESSION['connection']->close();
?>