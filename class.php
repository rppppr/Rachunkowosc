<?php 
	class Pytanie
	{
		public $id;
		public $tresc;
		public $tablicaOdpowiedzi;
		
		function __construct($id,$tresc,$odpA,$odpB,$odpC,$odpD)
		{
			$this->id = $id;
			$this->tresc = $tresc;
			$this->tablicaOdpowiedzi[0] = $odpA;
			$this->tablicaOdpowiedzi[1] = $odpB;
			$this->tablicaOdpowiedzi[2] = $odpC;
			$this->tablicaOdpowiedzi[3] = $odpD;
		}
	}
?>