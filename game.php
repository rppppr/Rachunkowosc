<!DOCTYPE html>
<html lang="pl">
<?php
	require_once('class.php');
	require_once('config.php');
	require_once('gra.php');
	
	$js = json_encode($_SESSION['dane']);
?>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Projekt rachunkowość - graj</title>

    <link rel="stylesheet" type="text/css" href="CSS/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="CSS/mdb.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="CSS/main.css">
	<link rel="stylesheet" type="text/css" href="CSS/MKK.css">
    <script src="JS/jquery-3.3.1.min.js"></script>
    <script src="JS/popper.min.js"></script>
    <script src="JS/bootstrap.min.js"></script>
    <script src="JS/mdb.min.js"></script>
	<script src="https://unpkg.com/scrollreveal"></script>
</head>
<body>
    <div id="Welcome" class="bg-img-container view">
        <div class="full-bg-img d-flex container-fluid align-items-center justify-content-center">
            <div class="row d-flex justify-content-center">
                <div class="col-md-12 text-center pytanie mb-5">
                    <p>Aby zacząć grę, kliknij jedną ze strzałek na dole</p>
                </div>
                <div class="col-12 col-md-6 text-center odpowiedz odp-A">
                    <p>-</p>
                </div>
                <div class="col-12 col-md-6 text-center odpowiedz odp-B">
                    <p>-</p>
                </div>
                <div class="col-12 col-md-6 text-center odpowiedz odp-C">
                    <p>-</p>
                </div>
                <div class="col-12 col-md-6 text-center odpowiedz odp-D">
                    <p>-</p>
                </div>
                <div class="col-12 panel-sterowania mt-5">
                    <button class="poprzednie"> < </button>
                    <p class="nr-pytania">1/20</p>					
                    <button class="nastepne"> > </button><br>
					<!-- Przycisk "Zakończ grę" z restartem (początek) MK -->
                    <div id="confirm">  <!-- okienko które się pojawi -->
                        <div class="message"></div>
                        <button class="restart">Restart</button>
                    </div>
                         <!-- przycisk "Zakończ grę" -->
                    <button onclick = 'functionConfirmReset("Twoja liczba punktów:",
					function zakoncz() 
					{
                         location.reload();
                    });'>Zakończ grę
					</button>
                    <!-- koniec okienka z Restartem -->
                </div>
            </div>
        </div>
    </div>
	<script>
		var tablicaJSON = <?php echo $js; ?>;
		var iloscPytan = <?php echo $i; ?>;
	</script>
	<script src="JS/gra.js"></script>
	<script src="JS/main.js"></script>
	<script src="JS/Marta.js"></script>
</body>
</html>
