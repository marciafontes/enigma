<?php
include_once '../../helpers/Import.php';
Import::controller('AbstractController');
Import::action('ActionJogo');

class ControllerJogo extends AbstractController
{
	protected function getAction()
	{
		if (!isset($this->action))
			$this->action = new ActionJogo();
		
		return $this->action;
	}
	
	public function showAllJogo()
	{
		$jogos = $this->getAction()->getAllJogos();
		
// 		var_dump($jogos);
		
		if ($jogos)
		{
			foreach ($jogos as $jogo)
			{
				$this->createBoxJogo($jogo);
			}
		}
	}
	
	private function createBoxJogo(Jogo $jogo)
	{
		echo '<div style="border:1px solid red; float:left; width:350px; height:auto; padding:20px 0;">';
			echo '<br/><br/><br/><a href="index.php?page=exibeRodadas?idJogo='. $jogo->getJogo() .'" class="hi-icon hi-icon-gamepad" title="Jogar">Jogo '.$jogo->getId().'</a>';
			echo '<br/>Descrição: ' . $jogo->getDescricao();
			echo '<br/>Premio do Jogo: ' . $jogo->getPermioFinal();
		echo '</div>';
	}
}
?>