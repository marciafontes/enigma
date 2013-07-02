<?php
	// Inclui o arquivo com a classe de login
	require_once("../../includes/usuarios.class.php");
	// Instancia a classe
	$userClass = new Usuario();
	 
	// Verifica se não há um usuário logado
	if ( $userClass->usuarioLogado(false) === false ) {
	    // Não há um usuário logado, redireciona pra tela de login
	    header("Location: index.php");
	    exit;
	}
?>
<div id="content">
	<div class="hi-icon-wrap hi-icon-effect-6">
		<?php 
			Import::controller('ControllerJogo');
			$controllerJogo = new ControllerJogo();
			$controllerJogo->showAllJogo();
		?>
		<a href="index.php?page=exibeRodadas" class="hi-icon hi-icon-gamepad" title="Jogar">Jogar</a>
	</div>
</div>