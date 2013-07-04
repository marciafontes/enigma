<?php
include_once '../../helpers/Import.php';
Import::controller('ControllerRodada');

// Inclui o arquivo com a classe de login
require_once("../../includes/usuarios.class.php");
require_once("../../includes/conexao.class.php");
// Instancia a classe
$userClass = new Usuario();
// Verifica se não há um usuário logado
if ( $userClass->usuarioLogado() === false ) {
    // Não há um usuário logado, redireciona pra tela de login
    header("Location: index.php");
    exit;
}
?>
<h2 class="headPage">Rodadas</h2>
<?php 
$controllerRodada = new ControllerRodada();
$controllerRodada->showAllRodada(new Request());

?>