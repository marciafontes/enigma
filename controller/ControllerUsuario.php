<?php
include_once '../../helpers/Import.php';
Import::controller('AbstractController');
Import::action('ActionUsuario');

class ControllerUsuario extends AbstractController
{
	public function getAction()
	{
		if ($this->action==null)
			$this->action = new ActionUsuario();
		
		return $this->action;
	}
	
	public function acessoUsuario(IRequest $request)
	{
		if ($request->isElement('logarUsuario'))
		{
			try
			{
				$this->getAction()->checkLoginData($request);
				
				header('Location: /' . Config::PROJECT_NAME . '/view/aluno/index.php?page=inicio');
			}
			catch (InvalidLoginException $e)
			{
				Message::alert($e->getMessage());
				header('Location: /' . Config::PROJECT_NAME . '/view/inicio/index.php?page=loginUsuario');
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