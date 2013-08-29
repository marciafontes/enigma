<?php
include_once '../../helpers/Import.php';
Import::exception('AbstractException');

class NoUserException extends AbstractException
{
	public function InvalidLoginException($message='')
	{
		if ($message)
			$this->message = $message;
		else
			$this->message = 'O Usuário informado não existe no sistema.';
	}
}
?>