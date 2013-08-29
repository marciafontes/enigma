<?php
include_once '../../helpers/Import.php';
Import::exception('AbstractException');

class InvalidLoginException extends AbstractException
{
	public function InvalidLoginException($message='')
	{
		if ($message)
			$this->message = $message;
		else
			$this->message = 'Dados de login/senha inválidos.';
	}
}
?>