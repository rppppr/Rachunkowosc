<?php
	require_once('config.php');

	  $sql = "SELECT uzytkownicy.*, COUNT(dane.IDUzytkownika) AS Total FROM uzytkownicy LEFT JOIN dane ON uzytkownicy.IDUzytkownika=dane.IDUzytkownika GROUP BY uzytkownicy.IDUzytkownika, uzytkownicy.Login";

	  $result = $_SESSION['connection']->query($sql);

	  if ($result->num_rows > 0)
	  {
		  while($row = $result->fetch_assoc())
		  {
			 echo $row["IDUzytkownika"]. ". " . $row["Login"]. " ". $row["StatusUzytkownika"]. " ". $row["Total"]. "\n";
			 $file_doc='Uzytkownicy'.'.rtf';
		  }
		  header("Content-type: text/rtf");
		  header("Content-Disposition:attachment; filename={$file_doc}");
	  }
	  else
	  {
		  echo "Wystąpił nieznany błąd";
	  }
?>

