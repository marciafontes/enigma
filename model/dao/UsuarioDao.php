<?php
include_once '../../helpers/Import.php';

Import::dao('AbstractDao');
Import::bean('Usuario');

class UsuarioDao extends AbstractDao
{
	public function selectUsuario(Usuario $usuario)
	{
		$this->sql = 'SELECT COUNT(*) TotalUsuario 
						FROM ngm_usuario
						WHERE usuario=? AND senha=?';
		
		$this->prepare();
		
		$this->setValue($usuario->getUsuario());
		$this->setValue($usuario->getSenha());
		
		return $this->fetchStmtObject('Usuario');
	}
}



?>