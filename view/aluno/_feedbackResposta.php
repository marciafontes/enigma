<?php
include_once '../../helpers/Import.php';
Import::controller('ControllerSubmissao');
Import::helpers('Ajax');

Security::restrictByPerfil();

Ajax::header();

$contollerSubmissao = new ControllerSubmissao();

$contollerSubmissao->cadastrarSubmissaoResposta(new Request());
?>