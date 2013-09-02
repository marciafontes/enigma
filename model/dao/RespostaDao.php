<?php
include_once '../../helpers/Import.php';
Import::dao('AbstractDao');


class RespostaDao extends AbstractDao
{
	public function selectAllResposta()
	{
		$this->sql = 'SELECT id_resposta idResposta, ngm_pergunta_id_pergunta idPergunta,
							 				resposta, feedback, respostacorreta Correta, pontuacao 
								FROM ngm_resposta r';
		
		$this->prepare();
		
		return $this->fetchAllStmtObject('Resposta');
	}
	
	public function selectRespostaByIdPergunta()
	{
		
		$this->sql = 'SELECT id_resposta idResposta, ngm_pergunta_id_pergunta idPergunta,
							 				resposta, feedback, respostacorreta Correta, pontuacao 
								FROM ngm_resposta r, ngm_pergunta p
											JOIN ON(p.idPergunta = r.idPergunta)
													WHERE r.idPergunta = ? ';
		
	}
	
}