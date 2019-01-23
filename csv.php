<?php
	require_once('class.php');
	require_once('config.php');

	$wiersze = $_SESSION['dane'];
	
	header("Content-type: application/csv");
    header("Content-Disposition: attachment; filename=PytaniaOrazOdpowiedzi.csv");
	
	$csv = fopen('php://output', 'w');
	
	for($i = 0; $i < count($_SESSION['dane']) ; $i++)
	{
		fputcsv($csv,[$wiersze[$i]->id]);
		fputcsv($csv,[$wiersze[$i]->tresc]);
		fputcsv($csv,[$wiersze[$i]->tablicaOdpowiedzi[0]]);
		fputcsv($csv,[$wiersze[$i]->tablicaOdpowiedzi[1]]);
		fputcsv($csv,[$wiersze[$i]->tablicaOdpowiedzi[2]]);
		fputcsv($csv,[$wiersze[$i]->tablicaOdpowiedzi[3]]);
	}
	
	fclose($csv);
?>