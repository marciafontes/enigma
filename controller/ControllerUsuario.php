<?php
include_once '../../helpers/Import.php';
Import::controller('AbstractController');

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
		/* try
		{
			
		} */
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