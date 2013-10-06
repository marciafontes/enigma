<?php

include_once '../../helpers/Import.php';
Import::controller('AbstractController');
Import::action('ActionAssunto');

class ControllerAssunto extends AbstractController
{
	public function getAction()
	{
		if (!isset($this->action))
			return $this->action = new ActionAssunto();
		else return $this->action;
	}
	
	public function showAllAssunto()
	{
		$assuntos = $this->getAction()->getAllAssunto();
		
		if ($assuntos)
		{
			foreach ($assuntos as $assunto)
			{
				$this->createBoxJogo($assunto);
			}
		}else Message::alert('Não há assunto');
	}
	
	private function createBoxJogo(Assunto $assunto)
	{
		echo '<div style="border:1px solid red; float:left; width:350px; height:auto; padding:20px 0;">';
		echo '<br/>Nome: ' .$assunto->getNome();
		echo '<br/>Conteudo: ' . $assunto->getConteudo();
		echo '</div>';
	}
	
}
?>