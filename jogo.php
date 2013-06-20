<?php

// Inclui o arquivo com a classe de login
require_once("includes/usuarios.class.php");
require_once("includes/conexao.class.php");
// Instancia a classe
$userClass = new Usuario();
// Verifica se não há um usuário logado
if ( $userClass->usuarioLogado() === false ) {
    // Não há um usuário logado, redireciona pra tela de login
    header("Location: index.php");
    exit;
}
//Se realmente terminou o quiz, então vá para completo.php 
if(isset($_SESSION["completed"])){
	unset($_SESSION["completed"]);
	unset($_SESSION["init"]);
	unset($_SESSION["num"]);
   // header("location:completo.php"); 
} 

$id = $_GET["id"];
$conn = new dbconn("quiz"); 
$quiz = new dbrs("SELECT * FROM pergunta INNER JOIN assunto ON assunto.idassunto = pergunta.idassunto WHERE pergunta.idassunto= $id",1);
//$pergunta = new dbrs("SELECT * FROM assunto WHERE idassunto= '$id'",1);

if(!isset($_SESSION["init"])){ 
    $_SESSION["num"]=0; 
    $_SESSION["trys"] = 0; 
    $_SESSION["init"] = "true"; 
} 
/*Aqui pega o número da questão que estamos (0 significa que está na primeira questão, 1 na segunda e etc)*/
$qNum = intval($_SESSION["num"]); 


/*Se a questão foi submetida então cheque-a*/
if(isset($_GET["a"])){ 
	$a = $_GET["a"];
	$_SESSION["trys"] += 1; 
	
	/*Se a resposta está certa*/
	if(intval($quiz->rows[$qNum]["cop"])==intval($_GET["a"])){ 
		$_SESSION["nota"] = 10;
		$nota = $_SESSION["nota"];
		$up = new dbrs("INSERT INTO resposta VALUES ('', $_SESSION[usuario_id], $qNum, $a, now(), $nota)",0);
		$select = new dbrs("SELECT * FROM pontuacao WHERE id_user=$_SESSION[usuario_id] AND idassunto = $id", 1);
		$n = $select->num;
		if($n == 0) {
			$ins = new dbrs("INSERT INTO pontuacao VALUES ('', $_SESSION[usuario_id], $id, $nota)",0);
		} else {
			$up2 = new dbrs("UPDATE pontuacao set pontuacao = pontuacao + $nota WHERE id_user = $_SESSION[usuario_id] AND idassunto = $id",0);
		}
		/*Se estiver correta vá para a próxima questão*/
		$_SESSION["num"] += 1; 
        $qNum += 1; 
		/*Se foi finalizado o quiz então podemos proceder para a página de completado */
        if($quiz->num <= $qNum){ 
            $_SESSION["completed"]="1"; 
            header("location: sistema.php?page=completo"); 
        } 

        echo("<p align=center>Parabens, voce acertou!<br/></center>"); 
    } 
	/*Se a resposta está errada*/
    else{ 
		$_SESSION["nota"]=0;
		$nota = $_SESSION["nota"];
		$up = new dbrs("INSERT INTO resposta VALUES ('', $_SESSION[usuario_id], $qNum, $a, now(), $nota)",0);
		echo("<p align=center>Oops nao esta certo, vamos para a proxima questao<br/></center>"); 
		$_SESSION["num"] += 1; 
        $qNum += 1;
		if($quiz->num <= $qNum){ 
            $_SESSION["completed"]="1"; 
            header("location: sistema.php?page=completo"); 
        } 
    } 
}	
?>
<div class="avatar">

	<div class = "balaodialogo">
		<?php echo($quiz->rows[$qNum]["nome"])?> </br></br>
		<?php echo($quiz->rows[$qNum]["conteudo"])?>  </br></br>
		<?php echo($quiz->rows[$qNum]["pergunta"])?>
	</div>

	<table align="center" style="boder:0; width:400px; height:100px">
		<tr>
		<td style="background:lightgreen; color:#000"> a) <?php echo("<a href=\"sistema.php?page=jogo&id=$id&a=1\">".$quiz->rows[$qNum]["op1"]."</a>")?></td>
		</tr><tr>
		<td style="background:lightblue; color:#000"> b) <?php echo("<a href=\"sistema.php?page=jogo&id=$id&a=2\">".$quiz->rows[$qNum]["op2"]."</a>")?></td>
		</tr><tr> 
		<td style="background:lightgray; color:#000"> c) <?php echo("<a href=\"sistema.php?page=jogo&id=$id&a=3\">".$quiz->rows[$qNum]["op3"]."</a>")?></td>
		</tr><tr>
		<td style="background:yellow; color:#000"> d) <?php echo("<a href=\"sistema.php?page=jogo&id=$id&a=4\">".$quiz->rows[$qNum]["op4"]."</a>")?></td>
		</tr><tr>
		 <td style="background:red; color:#000"> e) <?php echo("<a href=\"sistema.php?page=jogo&id=$id&a=5\">".$quiz->rows[$qNum]["op5"]."</a>")?></td>
		</tr>
	</table> 
</div> 

<?php 
//Fechando conexão 
$conn->close(); 
?> 

