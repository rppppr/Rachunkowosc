<?php
	require_once('config.php');
	//Zmienna przechowująca ID pytania, potrzebna żeby zaktualizować dokladnie ten rekord
	$id = $_GET['id'];
	//Stworzenie zmiennej przechowującej zapytanie do bazy
	$sql = "SELECT * FROM Dane WHERE ID = '".$id."'";
	//Stworzenie zmiennej przechowującej wynik zapytania z bazy
	$result = $_SESSION['connection']->query($sql);
	if ($result->num_rows > 0) 
	{
		while($row = $result->fetch_assoc()) 
		{
			if($_SESSION["ID"] == $row['IDUzytkownika'] || $_SESSION["status"] == "Admin")
			{
				//Tworzymy formularz, w polach TEXTAREA i INPUT TYPE = TEXT bazowo ustawiamy wartości pobrane z bazy danych dla danego pytania, przez pobranie z adresu strony ID
				//czyli np.: adres to projektRachunkowosc/edycja.php?id=1, ID = 1, wczytujemy z bazy treść pytania z tym ID do pola TEXTAREA, jego odpowiedź A do INPUT TEXT NAME = A itd.
				echo 
				"<form action=\"update.php\" method=\"post\">
					<input type=\"hidden\" name=\"id\" value=\"".$row['ID']."\">
					<textarea name=\"pytanie\">".$row['Pytanie']."</textarea>
					<input type=\"text\" name=\"a\" value=\"".$row['OdpowiedzA']."\">
					<input type=\"text\" name=\"b\" value=\"".$row['OdpowiedzB']."\">
					<input type=\"text\" name=\"c\" value=\"".$row['OdpowiedzC']."\">
					<input type=\"text\" name=\"d\" value=\"".$row['OdpowiedzD']."\">";
					//Warunek poniżej automatycznie zaznacza aktualny status pytania, żeby nie wprowadzać zamieszania
					//Uwaga : wszystkie nowo dodane pytania mają status "Oczekujace"
					if($_SESSION["status"] == "Admin")
					{
						echo "<select name=\"status\" size=\"2\">";
						if($row['Status'] == "Zaakceptowane") echo "<option selected>Zaakceptowane</option><option>Oczekujace</option>";
						else echo "<option>Zaakceptowane</option><option selected>Oczekujace</option>";
					}
					echo
					"</select>
					<input type=\"submit\" value=\"Aktualizuj rekord\">
				</form>";
			}
			else
			{
				echo "Nie masz prawa do edycji tego pytania";
			}
		}
	} 
	else
	{
		echo "Coś jest nie tak";
	}
	//Jeśli nie chcemy modyfikować tego rekordu, to po prostu możemy powrócić, działa tak samo jak strzałka w tył xD
	echo "<form action=\"main.php\"><input type=\"submit\" value=\"Powrót bez edycji rekordu\"></form>";
	$_SESSION['connection'] -> close();
?>