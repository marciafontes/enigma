<?php

include_once '../../helpers/Import.php';
Import::controller('AbstractController');
Import::action('ActionPerguntaJogo');

class ControllerPerguntaJogo extends AbstractController
{
	protected function getAction()
	{
		if (!isset($this->action))
			$this->action = new ActionPerguntaJogo();
	
		return $this->action;
	}
	
	public function showAllPerguntaJogo()
	{
		$pergunta = $this->getAction()->getAllPerguntaJogo();
		
	}
	
	public function showPerguntaByRodadaAssunto(IRequest $request)
	{
		$perguntas = $this->getAction()->getPerguntaByIdRodadaAndAssunto($request);
	
		if($perguntas)
		{
			foreach ($perguntas as $pergunta)
			{
				echo '$pergunta';
			}
		}
		else Message::alert('Não Exixtem Perguntas Cadastradas');
	}
	
	public function showFeedbackPergunta(IRequest $request)
	{
	
	}
	
	public function securiryPerguntaRespondida(IRequest $request)
	{
	
	}
}
?>