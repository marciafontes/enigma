<?php
include_once '../../helpers/Import.php';
Import::controller ( 'AbstractController' );
Import::action ( 'ActionPergunta' );
class ControllerPergunta extends AbstractController {
	protected function getAction() {
		if (! isset ( $this->action ))
			$this->action = new ActionPergunta ();
		
		return $this->action;
	}
	
	
	public function showPerguntaByRodadaAssunto(IRequest $request)
	{
		$perguntas = $this->getAction ()->getPerguntaRodadaByIdRodadaAssunto($request);
		
		if ($perguntas) 
		{
					$this->buildAssunto ( $perguntas );
					$this->buildPerguntas ( $perguntas );
					return $this->idPergunta($perguntas);
					
		} else
			Message::alert ( 'Não existem Perguntas para esta Rodada' );
	}
	
	private function buildAssunto(Pergunta $pergunta)
	{
		echo '<div class = "balaodialogo">';
		
		echo $pergunta->conteudoAssunto;
		
		echo '</div>';
	}
	private function buildPerguntas(Pergunta $pergunta)
	{
		echo '<div class = "balaodialogo">';
		
		echo $pergunta->getPergunta ();
		
		echo '</div>';
	}
	
	private function idPergunta(Pergunta $pergunta)
	{
		return $pergunta->getId();
	}
	
	public function securiryPerguntaRespondida(IRequest $request)
	{
		
	}
	
}