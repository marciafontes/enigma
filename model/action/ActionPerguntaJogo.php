<?php

include_once '../../helpers/Import.php';
Import::action('AbstractAction');
Import::dao('PerguntaJogoDao');
Import::bean('PerguntaJogo');

class ActionPerguntaJogo extends AbstractAction
{
	public function getDao()
	{
		if (!isset($this->dao))
		{
			$this->dao = new PerguntaJogoDao();
			return $this->dao;
		}
		else
			return $this->dao;
	}
	
	public function getAllPerguntaJogo()
	{
		return $this->getDao()->selectAllPerguntaJogo();
	}

	public function getPerguntaByIdRodadaAndAssunto(IRequest $request)
	{
		$perguntaJogo = new PerguntaJogo();
		$perguntaJogo->getIdAssunto($request->get($idassunto));
		return $this->getDao()->showPerguntaByIdRodadaAssunto($pergunta);
	}
}


?>