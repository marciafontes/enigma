<?php
include_once '../../helpers/Import.php';
Import::action('AbstractAction');
Import::dao('JogoDao');

class ActionJogo extends AbstractAction
{
	public function getDao()
	{
		if (!isset($this->dao))
			$this->dao = new JogoDao();
		
		return $this->dao;
	}
	
	public function getAllJogos()
	{
		return $this->getDao()->selctAllJogo();
	}
}
?>