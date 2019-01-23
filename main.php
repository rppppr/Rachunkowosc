<html>
<head>
</head>
<body style="background:#F0F0F0;">
<?php
	require_once('class.php');
	require_once('config.php');
	require_once('gra.php');

	//Stworzenie zmiennej przechowującej zapytanie do bazy
	$sql = "SELECT * FROM Dane JOIN Uzytkownicy WHERE Dane.IDUzytkownika = Uzytkownicy.IDUzytkownika";
	
	
	//Stworzenie zmiennej przechowującej wynik zapytania z bazy
	$result = $_SESSION['connection']->query($sql);
	
	echo "Witaj ".$_SESSION["login"]."! Twój status konta to ".$_SESSION["status"].". Twoje ID ".$_SESSION["ID"];
?>
	<!-- guzik do wylogowania -->
	<form action="logowanie1.php">
	<input type="submit" value="Wyloguj">
	</form>
	<form action="eksport.php">
	<input type="submit" value="Wygeneruj listę użytkowników">
	</form>
	<form action="csv.php">
	<input type="submit" value="Wygeneruj arkusz z pytaniami i odpowiedziami">
	</form>
	<br>
	<!-- formularz służący do dowania pytań do bazy -->
	<form action="dodaj.php" method="POST">
		<textarea style="background:light-gray; height:17%; width:40%; border:1px solid black; padding:5px;" name="pytanie" placeholder="Treść pytania"></textarea>
		<br><br><br><input style="background:#e0fce2; height:5%; width:40%; border:1px solid black; padding:5px;" type="text" name="a" placeholder="Odpowiedź prawidłowa" required>
		<br><br><input style="background:#fce0e0; height:5%; width:40%; border:1px solid black; padding:5px;" type="text" name="b" placeholder="Inny wariant odpowiedzi" required>		
		<br><br><input style="background:#fce0e0; height:5%; width:40%; border:1px solid black; padding:5px;" type="text" name="c" placeholder="Inny wariant odpowiedzi" required>
		<br><br><input style="background:#fce0e0; height:5%; width:40%; border:1px solid black; padding:5px;" type="text" name="d" placeholder="Inny wariant odpowiedzi" required>		
		<input type="hidden" value="Oczekujace" name="status">
		<br><input type="submit" value="Dodaj do bazy">
	</form>
<?php
	//tworzymy tabelę, pojedyńczy wierszy, który zawiera komórki z ID,pytaniem i odpowiedziami, napisem edycja oraz usuwanie"
	echo 
		"
		<style>
		tr:hover 
			{background-color:#B7B7B7}	
		td
			{padding:5px;}
		</style>
		
		<table border=1 bgcolor=\"#D7D7D7\">
		<tr style=\"font-size:large; font-weight: bold;\">
		<td align=\"center\" style=\"width:2%; padding:5px;\">ID</td>
		<td style=\"width:23%; \">Treść pytania:</td>
		<td style=\"width:15%; \">A</td>
		<td style=\"width:15%; \">B</td>
		<td style=\"width:15%; \">C</td>
		<td style=\"width:15%; \">D</td>
		<td align=\"center\" style=\"width:5%; \">Edycja</td>
		<td align=\"center\" style=\"width:5%; \">Usuwanie</td>
		<td align=\"center\" style=\"width:5%; \">Dodane przez</td>
		<td align=\"center\" style=\"width:5%; \">Status</td>
		</tr>
		"
	;
	if ($result->num_rows > 0) 
	{
		while($row = $result->fetch_assoc()) 
		{
			//do stworzonej powyżej tabeli, za każdym razem, gdy możemy jeszcze coś wyświetlić, dodajemy kolejny wiersz, który zawiera ID, przypisane do niego pytanie, odpowiedziami
			//oraz 2 pola, które pozwolą edytować oraz usuwać cały rekord z bazy
			echo 
			"
			<tr>
			<td align=\"center\">".$row['ID']."</td>
			<td>".$row['Pytanie']."</td>
			<td>".$row['OdpowiedzA']."</td>
			<td>".$row['OdpowiedzB']."</td>
			<td>".$row['OdpowiedzC']."</td>
			<td>".$row['OdpowiedzD']."</td>		
			<td align=\"center\">
			
			<input type=\"button\" value=\"Edycja\" onclick=\"window.location.href='edycja.php?id=".$row['ID']."'\" style=\"background-color:#97d899;\" />
			
			</td>
			<td  align=\"center\">
			
			<input type=\"button\" value=\"Usun\" onclick=\"window.location.href='usun.php?id=".$row['ID']."'\" style=\"background-color:#d89797;\" />
			
			</td>
			<td>".$row['Login']."</td>
			<td>".$row['Status']."</td>				
			</tr>";
			

			
		}
	} 
	else 
	{
		echo "Brak wyników";
	}
	echo "</table>";
	
	$_SESSION['connection']->close();
?> 
</body>
</html>