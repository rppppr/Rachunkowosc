<?php
	require_once('config.php');
	
	//Zmienna przechowująca ID pytania, potrzebna żeby usunąć dokladnie ten rekord
	$id = $_GET['id'];
	
	
	$zabezpieczenie = "SELECT DISTINCT IDUzytkownika FROM Dane WHERE ID = '$id'";
	$wykonaj = $_SESSION['connection']->query($zabezpieczenie);
	
	if($wykonaj->num_rows > 0)
	{
		while($wynik = $wykonaj->fetch_assoc())
		{
			$test = $wynik['IDUzytkownika'];
		}
	}
	
	//Stworzenie zmiennej przechowującej zapytanie do bazy
	$sql = "DELETE FROM Dane WHERE ID = $id";
	if($_SESSION["status"] == "Admin")
	{
		//Test poprawności zapytania i jednoczesne wykonanie go (próba wykonania)
		if ($_SESSION['connection']->query($sql) === TRUE) 
		{
			echo "Pomyślnie usunięto rekord";
		} 
		else 
		{
			echo "Niestety, przy usuwaniu wystąpił błąd: " . $_SESSION['connection']->error;
		}
	}
	else 
	{
		echo "Nie masz prawa do usunięcia tego pytania";
	}
	echo "<form action=\"main.php\"><input type=\"submit\" value=\"Powrót do strony głównej\"></form>";
?>