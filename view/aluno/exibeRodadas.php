<?php
include_once '../../helpers/Import.php';
Import::controller('ControllerRodada');
?>
<h2 class="headPage">Rodadas</h2>
<?php 
$controllerRodada = new ControllerRodada();

$controllerRodada->showAllRodada(new Request());

?>