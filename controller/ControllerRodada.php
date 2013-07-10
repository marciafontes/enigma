<?php
include_once '../../helpers/Import.php';
Import::controller('AbstractController');
Import::action('ActionRodada');

class ControllerRodada extends AbstractController
{
	public function getAction()
	{
		if (!isset($this->action))
			$this->action = new ActionRodada();
		
		return $this->action;
	}
	
	public function showAllRodada(IRequest $request)
	{
		$rodadas = $this->getAction()->getAllRodadaByIdJogo($request);
		
		if ($rodadas)
		{
			foreach ($rodadas as $rodada)
				$this->buildIconsRodadas($rodada);
			
		}
		else
			Message::alert('Não existem Rodadas Cadastradas!');
	}
	
	private function buildIconsRodadas(Rodada $rodada)
	{
		echo '<div class="hi-icon-wrap2 hi-icon-effect-2 hi-icon-effect-2">';
		echo '<a href="index.php?page=exibePerguntasRodada&idJogo='.$rodada->getIdJogo().'&idRodada='.$rodada->getId().'" class="hi-icon hi-icon-location" title="Rodada">'.$rodada->getNomeRodada().'</a>';
		echo '</div>';
	}
}
?>