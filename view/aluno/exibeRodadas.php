<?php

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

$conn = new dbconn("quiz"); 
$quiz = new dbrs("SELECT idassunto FROM assunto",1);
$qNum = $quiz->num; 
//echo $qNum;
//exit;
//$num = $quiz->rows[$qNum]["cont"];
$i=0;
while ($i < $qNum)
  {
	$i=$i+1;
?>

<div class="hi-icon-wrap2 hi-icon-effect-2 hi-icon-effect-2">
					<a href="index.php?page=exibeJogo&id=<?php echo $i?>" class="hi-icon hi-icon-location" title="Rodada">Rodada <?php echo $i?></a>
</div>
	
<?php

}
?>