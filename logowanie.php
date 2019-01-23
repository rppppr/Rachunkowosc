<?php
  require_once('config.php');
  $_SESSION["login"] = $_POST['login'];
  $_SESSION["haslo"] = $_POST['password'];
  $login = $_SESSION["login"];
  $haslo = $_SESSION["haslo"];

  $sql = "SELECT * FROM uzytkownicy WHERE Login = '$login' AND Haslo = '$haslo'";
  
  $result = $_SESSION['connection']->query($sql);

  if ($result->num_rows > 0)
  {
      while($row = $result->fetch_assoc())
      {
        if($row["Login"] == $_SESSION["login"] && $row["Haslo"] == $_SESSION["haslo"])
        {
		  $_SESSION["status"] = $row['StatusUzytkownika'];
		  $_SESSION["ID"] = $row["IDUzytkownika"];
          header("Refresh:0; url=main.php");
        }
      }
  }
  else
  {
    header("Refresh:0; url=logowanie1.php");
    echo "<script type='text/javascript'>alert(\"Zly login lub haslo\");</script>";
  }
?>
