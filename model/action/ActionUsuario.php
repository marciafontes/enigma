<?php
include_once '../../helpers/Import.php';
Import::action('AbstractAction');
Import::dao('UsuarioDao');
Import::bean('Usuario');
class ActionUsuario extends AbstractAction
{
	public function getDao()
	{
		if ($this->dao==null)
			$this->dao = new UsuarioDao();
		return $this->dao;
	}
	
	public function isUsuarioLogado(IRequest $request)
	{
		
		$usuario = new Usuario();
		if($request)
		{
			
		}
	}
	
	
}

?>