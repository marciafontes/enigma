<?php
include_once '../../helpers/Import.php';
Import::action('AbstractAction');
Import::bean('Pergunta');
Import::dao('PerguntaDao');

class ActionPergunta extends AbstractAction
{
	public function getDao()
	{
		if (!isset($this->dao))
			$this->dao = new PerguntaDao();
		
		return $this->dao;
	}
	
	public function getAllIdPerguntaByIdRodada(IRequest $request)
	{
		$pergunta = new Pergunta();
		
		$pergunta->setIdRodada($request->get('idRodada'));
		
		return $this->getDao()->selectAllIdPerguntaByIdRodada($pergunta);
	}
	
	public function getPerguntaRodadaByIdRodadaAssunto(IRequest $request)
	{
		$pergunta = new Pergunta();
		
		$pergunta->setIdRodada($request->get('idRodada'));
		
		return $this->getDao()->selectPerguntaRodadaByIdRodadaAssunto($pergunta);
	}
}
?>