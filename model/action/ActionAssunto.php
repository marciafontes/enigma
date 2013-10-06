<?php

include_once '../../helpers/Import.php';
Import::action('AbstractAction');
Import::dao('AssuntoDao');
Import::bean('Assunto');


class ActionAssunto extends AbstractAction
{
	public function getDao()
	{
		if (!isset($this->dao))
		{
			$this->dao = new AssuntoDao();
			return $this->dao;
		}
		else return $this->dao;
	}
	public function getAllAssunto()
	{
		return $this->getDao()->selectAllAssunto();
	}

}
?>