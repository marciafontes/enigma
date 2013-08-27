<?php
include_once '../../helpers/Import.php';
Import::action('AbstractAction');
Import::bean('Pergunta');
class ActionPergunta extends AbstractAction
{
	public function getDao()
	{
		if (!isset($this->dao))
			$this->dao = new PerguntaDao();
		
		return $this->dao;
	}
	
	public function getPerguntaByIdRodadaAndAssunto()
	{
		
	}
}
?>