<?php
	include_once '../../helpers/Import.php';
	Import::controller('ControllerUsuario');
	$controllerUsuario = new ControllerUsuario();
	$controllerUsuario->sairSistema();
?>