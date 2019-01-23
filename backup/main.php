<html>
<head>
</head>
<body>
	 <?php
	 //Połączenie z bazą danych, dane potrzebne do tego oraz test połączenia
	$servername = "localhost";
	$username = "root";
	$password = "";
	$dbname = "Rachunkowosc";
	
	$typKonta = "Normalne";
	$login = "1";

	//Nawiązanie połączenia
	$conn = new mysqli($servername, $username, $password, $dbname);
	//Test połączenia
	if ($conn->connect_error) 
	{
		die("Błąd połączenia: " . $conn->connect_error);
	}

	//Stworzenie zmiennej przechowującej zapytanie do bazy
	$sql = "SELECT * FROM Dane ORDER BY IDUzytkownika DESC";
	
	//Stworzenie zmiennej przechowującej wynik zapytania z bazy
	$result = $conn->query($sql);
	?>
	<!-- formularz służący do dowania pytań do bazy -->
	<form action="dodaj.php" method="POST">
		<textarea name="pytanie" placeholder="Treść pytania"></textarea>
		<input type="text" name="a" placeholder="Odpowiedź prawidłowa" required>
		<input type="text" name="b" placeholder="Inny wariant odpowiedzi" required>
		<input type="text" name="c" placeholder="Inny wariant odpowiedzi" required>
		<input type="text" name="d" placeholder="Inny wariant odpowiedzi" required>
		<input type="hidden" value="Oczekujace" name="status">
		<input type="submit" value="Dodaj do bazy">
	</form>
	<?php
	//tworzymy tabelę, pojedyńczy wiersz, który zawiera komórki z ID,pytaniem i odpowiedziami, napisem edycja oraz usuwanie"
	echo "<table border=1><tr><td>ID</td><td>Treść</td><td>A</td><td>B</td><td>C</td><td>D</td><td>Dodane przez</td><td>Status</td><td>Edycja</td><td>Usuwanie</td></tr>";
	
	if ($result->num_rows > 0) 
	{
		while($row = $result->fetch_assoc()) 
		{
			//do stworzonej powyżej tabeli, za każdym razem, gdy możemy jeszcze coś wyświetlić, dodajemy kolejny wiersz, który zawiera ID, przypisane do niego pytanie, odpowiedziami
			//oraz 2 pola, które pozwolą edytować oraz usuwać cały rekord z bazy
			echo "<tr><td>".$row['ID']."</td><td>".$row['Pytanie']."</td><td>".$row['OdpowiedzA']."</td><td>".$row['OdpowiedzB']."</td><td>".$row['OdpowiedzC']."</td>
			<td>".$row['OdpowiedzD']."</td><td>".$row['IDUzytkownika']."</td><td>".$row['Status']."</td>";
			if($login === $row['IDUzytkownika'] || $typKonta === "Admin")
			{
				echo "<td><a href=\"edycja.php?id=".$row['ID']."\">Edytuj</a></td>
				<td><a href=\"usun.php?id=".$row['ID']."\">Usuń</a></td>";
			}
			else 
			{
				echo "<td>Nie możesz edytować tego pytania</td>
				<td>Nie możesz usunąć tego pytania</td>";
			}
			echo "</tr>";
		}
	} 
	else 
	{
		echo "Brak wyników";
	}
	echo "</table>";
	
	$conn->close();
?> 
</body>
</html>