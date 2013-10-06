<?php
include_once '../../helpers/Import.php';
Import::action('AbstractAction');
Import::dao('UsuarioDao');
Import::bean('Usuario');
Import::exception('InvalidLoginException');
Import::exception('NoUserException');

class ActionUsuario extends AbstractAction
{
	public function getDao()
	{
		if ($this->dao==null)
			$this->dao = new UsuarioDao();
		return $this->dao;
	}
	
	public function checkLoginData(IRequest $request)
	{
		$usuario = new Usuario();
		$usuario->setUsuario($request->get('usuario'));
		$usuario->setSenha($request->get('senha'));
		
		$usuario = $this->getDao()->selectUsuario($usuario);
		
		if (!($usuario->TotalUsuario == 1))
			throw new InvalidLoginException();
	}
}
?>