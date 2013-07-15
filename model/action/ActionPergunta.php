<?php
include_once '../../lib/Import.php';
Import::action('AbstractAction');
Import::bean('Pergunta');
class ActionPergunta extends AbstractAction
{
	protected function getDao()
	{
		if (!isset($this->dao))
			$this->dao = new PerguntaDao();
		
		return $this->dao;
	}
}
?>