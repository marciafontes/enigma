<?php
	// Inclui o arquivo com a classe de login
	require_once("includes/usuarios.class.php");
	// Instancia a classe
	$userClass = new Usuario();
	 
	// Verifica se não há um usuário logado
	if ( $userClass->usuarioLogado() === false ) {
	    // Não há um usuário logado, redireciona pra tela de login
	    header("Location: index.php");
	    exit;
	}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<META HTTP-EQUIV="content-type" CONTENT="text/html; charset=iso-8859-1">
<html> 
<head> 
	<title>Segredos</title> 
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<link rel="shortcut icon" href="../favicon.ico" type="image/x-icon"/>
	<link rel="stylesheet" type="text/css" href="css/template.css" />
	<link rel="stylesheet" type="text/css" href="css/default.css" />
	<link rel="stylesheet" type="text/css" href="css/component.css" />
	<script src="js/modern.custom.js"></script>
</head> 
<body>

	<div id="topo">
	
	</div>
	
	<div id="corpo">
		<div class="hi-icon-wrap hi-icon-effect-1 hi-icon-effect-1a">
					<a href="sistema.php?page=" class="hi-icon hi-icon-home" alt="Home">Home</a>
					<a href="sistema.php?page=perfil" class="hi-icon hi-icon-user" alt="Perfil">Perfil</a>
					<a href="sistema.php?page=desempenho" class="hi-icon hi-icon-star" alt="Desempenho">Desempenho</a>
					<a href="sistema.php?page=ranking" class="hi-icon hi-icon-list" alt="Ranking">Ranking</a>
					<a href="sistema.php?page=contato" class="hi-icon hi-icon-mail" alt="Contate-nos">Contate-nos</a>
					<a href="sistema.php?page=config" class="hi-icon hi-icon-cog" alt="Configurações">Configura&ccedil;&otilde;es</a>	
					<a href="sistema.php?page=regra" class="hi-icon hi-icon-info" alt="Como Jogar">Como Jogar</a>
		</div>			
			
		
		<div id="content">
		<?php
			$p = $_GET['page'];
			$page = $p.".php";
			
			if (file_exists($page)) {
				include($page);
			}
			elseif($p=="") {
		?>
				<div class="hi-icon-wrap hi-icon-effect-6">
					<a href="sistema.php?page=rodadas" class="hi-icon hi-icon-gamepad" alt="Jogar">Jogar</a>
				</div>	
		<?php
			} else {
				echo "Essa página não existe";
			}
		?>
		
		</div>
		
	<div>

	
	<!--<div id="clear"></div>-->
	
	<div id="rodape">
		<p align="center"> @2013 </p>
	</div>



</body>
</html>