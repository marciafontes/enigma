<?php
include_once '../../helpers/Import.php';

Import::controller('AbstractController');
Import::action('ActionResposta');
Import::action('ActionPergunta');

class ControllerResposta extends AbstractController
{
	public function getAction()
	{
		if ($this->action == null)
			$this->action = new ActionResposta();
		return $this->action;
	}
	
	public function showRespostaByIdPergunta(IRequest $request)
	{
		
		$respostas = $this->getAction()->getRespostaByIdPergunta($request);
		
		if ($respostas)
		{
				$this->buildRespostas($respostas);
				
		}
		
		
	}
	
	public function buildRespostas( $respostas)
	{
		$colors = array("lightgreen","lightblue","lightgray","yellow","red");
		$alternativas = array(0=>"A) ",1=>"B) ",2=>"C) ",3=>"D) ",4=>"E) ");
		
		for ($i=0;$i<5;$i++)
		{
			echo '<div style="background: '.$colors[$i].'; color: #000">';
			echo' <input type="radio" name="respostas" value="'.$respostas[$i]->getIdResposta().'" />'.$alternativas[$i].$respostas[$i]->getResposta().'<br>';
			echo '</div>';
		} 
		
	}
	
}
?>