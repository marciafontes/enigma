<?php
include_once '../../helpers/Import.php';
Import::controller('AbstractController');
Import::action('ActionPergunta');

class ControllerPergunta extends AbstractController
{
	protected function getAction()
	{
		if (!isset($this->action))
			$this->action = new ActionPergunta();
		
		return $this->action;
	}
	
	public function showPerguntaByRodadaAssunto(IRequest $request)
	{
		return $this->getAction()->getPerguntaByIdRodadaAndAssunto();
	}
	
	public function showFeedbackPergunta(IRequest $request)
	{
		
	}
	
	public function securiryPerguntaRespondida(IRequest $request)
	{
		
	}
}