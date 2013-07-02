<?php
include_once '../../helpers/Import.php';
Import::controller('AbstractController');

require_once("../../includes/usuarios.class.php");
require_once("../../includes/conexao.class.php");

class ControllerUsuario extends AbstractController
{
	public function getAction()
	{
		//@TODO: implementar camada Model com o action para manipular os dados do DAO e BEAN
	}
	
	public function acessoUsuario()
	{
		if (isset($_POST['logarUsuario']))
		{
			session_start();
	
			$userClass = new Usuario();
			$conn = new dbconn("quiz");
			
			$usuario = ($_POST['usuario']); // ESSA VARIAVEL IR� GUARDAR INFORMA��ES FORNECIDAS PELO CAMPO DE TEXTO LOGIN DO FORMULARIO
			$senha = ($_POST['senha']); // ESSA VARIAVEL IR� GUARDAR INFORMA��ES FORNECIDAS PELO CAMPO DE TEXTO SENHA DO FORMULARIO
			$lembrar = (isset($_POST['lembrar']) AND !empty($_POST['lembrar']));
			
			$isUsuarioLogado = $userClass->logaUsuario($usuario, $senha, $lembrar);
			
			// Tenta logar o usuário com os dados
			if ($isUsuarioLogado)
			{
				// Usuário logado com sucesso, redireciona ele para a página restrita
				header("Location: /senigma/view/aluno/index.php?page=inicio");
				exit;
			}
			else
			{
				$_SESSION['mensagem'] = "Erro:" . $userClass->erro;
				// Não foi possível logar o usuário, exibe a mensagem de erro
				header("Location: /senigma/view/inicio/index.php?page=loginUsuario");
				//echo("<script type='text/javascript'> alert('erro'); location.href='index.php';</script>");
				exit;
			}
		}
	}
	
	public function securityAluno()
	{
		// Instancia a classe
		$userClass = new Usuario();
		
		// Verifica se não há um usuário logado
		if ($userClass->usuarioLogado(false) === false)
		{
			// Não há um usuário logado, redireciona pra tela de login
			header("Location: index.php");
			exit;
		}
	}
	
	public function sairSistema()
	{
		$userClass = new Usuario();
		
		if ($userClass->logout())
			header("Location: /senigma/view/inicio/index.php?page=loginUsuario");
	}
}
?>