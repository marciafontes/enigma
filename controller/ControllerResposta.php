<?php
include_once '../../helpers/Import.php';

Import::controller('AbstractController');
Import::action('ActionResposta');

class ControllerResposta extends AbstractController
{
	public function getAction()
	{
		if ($this->action == null)
			$this->action = new ActionResposta();
		return $this->action;
	}
	
}
?>