<?php
include_once '../../helpers/Import.php';
Import::helpers('Session');

class Security
{
	public static function restrictByPerfil()
	{
		Session::start();
		
		Session::isElement('idUsuario');
	}
}
?>