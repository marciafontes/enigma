<?php
include_once '../../helpers/Import.php';
Import::controller('AbstractController');

require_once("../../includes/usuarios.class.php");
require_once("../../includes/conexao.class.php");

class ControllerUsuario extends AbstractController
{
	public function getAction()
	{
		//@TODO: implementar camada action para comunicar BD
	}
	
	public function validaUsuario()
	{
		if (isset($_POST['logarUsuario']))
		{
			session_start();
	
			$userClass = new Usuario();
			$conn = new dbconn("quiz");
			
			$usuario = ($_POST['usuario']); // ESSA VARIAVEL IR¡ GUARDAR INFORMA«’ES FORNECIDAS PELO CAMPO DE TEXTO LOGIN DO FORMULARIO
			$senha = ($_POST['senha']); // ESSA VARIAVEL IR¡ GUARDAR INFORMA«’ES FORNECIDAS PELO CAMPO DE TEXTO SENHA DO FORMULARIO
			$lembrar = (isset($_POST['lembrar']) AND !empty($_POST['lembrar']));
			
			$isUsuarioLogado = $userClass->logaUsuario($usuario, $senha, $lembrar);
			
			// Tenta logar o usu√°rio com os dados
			if ($isUsuarioLogado)
			{
				// Usu√°rio logado com sucesso, redireciona ele para a p√°gina restrita
				header("Location: /senigma/view/aluno/index.php?page=inicio");
				exit;
			}
			else
			{
				$_SESSION['mensagem'] = "Erro:" . $userClass->erro;
				// N√£o foi poss√≠vel logar o usu√°rio, exibe a mensagem de erro
				header("Location: /senigma/view/inicio/index.php?page=loginUsuario");
				//echo("<script type='text/javascript'> alert('erro'); location.href='index.php';</script>");
				exit;
			}
		}
	}
}
?>