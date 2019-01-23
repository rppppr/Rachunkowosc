 <?php
	require_once('config.php');

	
	//Stworzenie zmiennej przechowującej zapytanie do bazy
	$sql = "INSERT INTO Dane VALUES (default,'".$_POST['pytanie']."','".$_POST['a']."','".$_POST['b']."','".$_POST['c']."','".$_POST['d']."','".$_POST['status']."',".$_SESSION["ID"].")";
	
	//Test poprawności zapytania i jednoczesne wykonanie go (próba wykonania)
	if ($_SESSION['connection']->query($sql) === TRUE) 
	{
		echo "Pomyślnie dodano nową wartość do tabeli";
	}
	else 
	{
		echo "Error: " . $sql . "<br>" . $_SESSION['connection']->error;
	}
	echo "<form action=\"main.php\"><input type=\"submit\" value=\"Powrót do strony glównej\"></form>";
?>