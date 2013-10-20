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
	
	public function saveSubmissaoResposta(IRequest $request)
	{
		$submissao = new Submissao();
		
		$submissao->setIdPergunta($request->get('idPergunta'));
		$submissao->setIdResposta($request->get('idResposta'));
		$submissao->setIdUsuario(Session::get('idUsuario'));
		
		if (!$this->getDao()->insertSubmissaoPergunta($submissao))
			throw new Exception('Falha de Inserчуo');
	}
}
?>