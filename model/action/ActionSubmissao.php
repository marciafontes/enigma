<?php
include_once '../../helpers/Import.php';
Import::action('AbstractAction');
Import::bean('Submissao');
Import::dao('SubmissaoDao');

class ActionSubmissao extends AbstractAction
{
	public function getDao()
	{
		if (!isset($this->dao))
			$this->dao = new SubmissaoDao();
		return $this->dao;
	}
	
	public function setSubmissao()
	{
		$submissao = new Submissao();
		
		return $this->getDao()->saveSubmissao();
	}
}
?>