<?php
	require_once('config.php');
	session_destroy();
?>


<html>
<body>
  <form method="post" action="logowanie.php">
    Login: <input type="text" name="login"> </input></br>
    Haslo: <input type="password" name="password"></input></br>
    <input type="submit" value="Wyslij" name="send"/>
  </form>
</body>
</html>
