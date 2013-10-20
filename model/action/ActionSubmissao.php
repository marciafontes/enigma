<?php
include_once '../../helpers/Import.php';

Import::action('AbstractAction');
Import::bean('Submissao');
Import::dao('SubmissaoDao');
Import::action('ActionResposta');

class ActionSubmissao extends AbstractAction
{
	public function getDao()
	{
		if (!isset($this->dao))
			$this->dao = new SubmissaoDao();
		return $this->dao;
	}
	
	public function saveSubmissaoResposta(IRequest $request)
	{
		$submissao = new Submissao();
		
		$submissao->setIdPergunta($request->get('idPergunta'));
		$submissao->setIdResposta($request->get('idResposta'));
		$submissao->setIdUsuario(Session::get('idUsuario'));
		
		$isSubmissaoInserted = $this->getDao()->insertSubmissaoPergunta($submissao);
		
		if (!$isSubmissaoInserted)
			throw new Exception('Falha de Inserчуo');
		
		$actionResposta = new ActionResposta();

		$feedbakcResposta = $actionResposta->getFeedbackRespostaById($request->get('idResposta'));
		
		if (!$feedbakcResposta)
			throw new Exception('Sem Feedback para a Resposta!');
		
		return $feedbakcResposta->getFeedback();
	}
}
?>