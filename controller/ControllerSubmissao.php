<?php
include_once '../../helpers/Import.php';
Import::controller('AbstractController');
Import::action('ActionSubmissao');

class ControllerSubmissao extends AbstractController
{
	public function getAction()
	{
		if (!isset($this->action))
			$this->action = new ActionSubmissao();
		return $this->action;
	}
	
	public function cadastrarSubmissao(IRequest$request)
	{
		
		if ($request->isElement ( 'SubmissaoResposta' ))
		{
			// $this->getAction()->setSubmissao();
			
			header ( 'Location: /' . Config::PROJECT_NAME . '/view/aluno/index.php?page=exibePerguntasRodada&idJogo=' . $request->get ( 'idJogo' ) . '&idRodada=' . $request->get ( 'idRodada' ) );
		}
		// header('Location: /' . Config::PROJECT_NAME . '/view/inicio/index.php?page=loginUsuario');
	}
}
?>