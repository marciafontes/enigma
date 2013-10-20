<?php
include_once'../../helpers/Import.php';

Import::action('AbstractAction');
Import::bean('Resposta');
Import::dao('RespostaDao');

class ActionResposta extends AbstractAction
{
	public function getDao()
	{
		if ($this->dao == null)
			$this->dao = new RespostaDao();
		return $this->dao;
	}
	
	public function getRespostaByIdPergunta(IRequest $request)
	{
		$resposta = new Resposta();
		
		$resposta->setIdPergunta($request->get('idPergunta'));
		
		return $this->getDao()->selectRespostaByIdPergunta($resposta);
	}
	
	public function getFeedbackRespostaById($idResposta)
	{
		$resposta = new Resposta();
		
		$resposta->setIdResposta($idResposta);
		
		return $this->getDao()->getFeedbackResposta($resposta);
	}
}