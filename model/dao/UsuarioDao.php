<?php
include_once '../../helpers/Import.php';

Import::dao('AbstractDao');
Import::bean('Usuario');

class UsuarioDao extends AbstractDao
{
	public function selectAllUsuario()
	{
		$this->sql = '';
	}
}



?>