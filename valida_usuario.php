<?php 
session_start();
// Inclui o arquivo com a classe de login
require_once("includes/usuarios.class.php");
require_once("includes/conexao.class.php");
// Instancia a classe
$userClass = new Usuario();
$conn = new dbconn("quiz"); 

$usuario = ($_POST['usuario']); // ESSA VARIAVEL IRÁ GUARDAR INFORMAÇÕES FORNECIDAS PELO CAMPO DE TEXTO LOGIN DO FORMULARIO
$senha = ($_POST['senha']); // ESSA VARIAVEL IRÁ GUARDAR INFORMAÇÕES FORNECIDAS PELO CAMPO DE TEXTO SENHA DO FORMULARIO
$lembrar = (isset($_POST['lembrar']) AND !empty($_POST['lembrar']));

// Tenta logar o usuário com os dados
if ( $userClass->logaUsuario( $usuario, $senha, $lembrar ) ) {
	// Usuário logado com sucesso, redireciona ele para a página restrita
	header("Location: sistema.php?page=");
	exit;
} else {
	$_SESSION['mensagem'] = "Erro:" . $userClass->erro;
    // Não foi possível logar o usuário, exibe a mensagem de erro
    header("Location: index.php");
	//echo("<script type='text/javascript'> alert('erro'); location.href='index.php';</script>");
	exit;
	
}
	
/*$sql = mysql_query("SELECT type FROM user WHERE username ='$login'"); //verifica o nivel de acesso

$nivel  = mysql_fetch_row($sql);
$nivel = $nivel[0];
        

$analisar = "SELECT * FROM user WHERE username = '$login' AND password = '$senha'"; // ESSA VARIAVEL IRÁ ANALISAR NO BANCO DE DADOS NA TABELA LOGIN SE USUARIO E SENHA ESTAO CORRETOS
$resultado = mysql_query($analisar); // ESSA VARIAVEL IRÁ GUARDAR INFORMAÇÕES FORNECIDAS PELA VARIAVEL $ANALISAR 

$iniciar = mysql_num_rows($resultado); // ESSA VARIAVEL SERVIRÁ PARA CHECAR SE EXISTE UM USUARIO COM ESSE LOGIN (NOTE QUE ELA BUSCA INFORMAÇÕES DE OUTRAS VARIAVEIS)

if ($iniciar == 1)// ESSA CONDIÇÃO IRÁ VERIFICAR SE OS DADOS FORNECIDOS NÃO IGUAIS AOS DO BANCO DE DADOS
{ // APÓS A CONDIÇÃO FOR ACEITA, ACONTECE UMA AÇÃO, E ESSA AÇÃO SERÁ O RESULTADO DO LOGIN EFETUADO
 
if ($nivel == 1){
   header("Location: tela_sistema_admin.php");
      }  

if ($nivel == 2){
   header("Location: tela_sistema_professor.php");
      } 

if ($nivel == 3){
 header("Location: tela_sistema.php");} ?>

<?php // AQUI JA COMEÇA COMENTARIOS EM PHP, OU SEJA EU ABRI NOVAMENTE A TAG DO PHP PARA QUE MEU CODIGO CONTINUE PROCESSANDO SEM ERRO ALGUM 
}
else // EXCEÇÃO CASO LOGIN OU SENHA ESTIVEREM ERRADOS
{
echo "Login ou Senha Invalido"; // MENSAGEM QUE APARECERÁ CASO OS DADOS FORNECIDOS ESTAJAM ERRADOS
}*/
?>
