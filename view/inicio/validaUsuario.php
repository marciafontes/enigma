<?php 
session_start();
// Inclui o arquivo com a classe de login
require_once("includes/usuarios.class.php");
require_once("includes/conexao.class.php");
// Instancia a classe
$userClass = new Usuario();
$conn = new dbconn("quiz"); 

$usuario = ($_POST['usuario']); // ESSA VARIAVEL IR� GUARDAR INFORMAÇÕES FORNECIDAS PELO CAMPO DE TEXTO LOGIN DO FORMULARIO
$senha = ($_POST['senha']); // ESSA VARIAVEL IR� GUARDAR INFORMAÇÕES FORNECIDAS PELO CAMPO DE TEXTO SENHA DO FORMULARIO
$lembrar = (isset($_POST['lembrar']) AND !empty($_POST['lembrar']));

// Tenta logar o usuário com os dados
if ( $userClass->logaUsuario( $usuario, $senha, $lembrar ) ) {
	// Usuário logado com sucesso, redireciona ele para a página restrita
	header("Location: /view/aluno/index.php?page=sistema");
	exit;
} else {
	$_SESSION['mensagem'] = "Erro:" . $userClass->erro;
    // Não foi possível logar o usuário, exibe a mensagem de erro
    header("Location: index.php");
	//echo("<script type='text/javascript'> alert('erro'); location.href='index.php';</script>");
	exit;
	
}