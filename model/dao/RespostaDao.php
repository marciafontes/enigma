<?php
include_once '../../helpers/Import.php';
Import::dao ( 'AbstractDao' );
class RespostaDao extends AbstractDao 
{
	public function selectAllResposta()
	{
		$this->sql = 'SELECT id_resposta idResposta, ngm_pergunta_id_pergunta idPergunta,
							 				resposta, feedback, respostacorreta Correta, pontuacao 
								FROM ngm_resposta r';
		
		$this->prepare ();
		
		return $this->fetchAllStmtObject ( 'Resposta' );
	}
	
	public function selectRespostaByIdPergunta(Resposta $resposta)
	{
		$this->sql = 'SELECT r.id_resposta idResposta, r.ngm_pergunta_id_pergunta idPergunta, r.resposta,
							 r.feedback, r.respostacorreta respostaCorreta, r.pontuacao
							 	FROM ngm_resposta r
							 		JOIN ngm_pergunta p ON ( r.ngm_pergunta_id_pergunta = p.id_pergunta)
												WHERE p.id_pergunta=?';
		$this->prepare();
		
		$this->setValue($resposta->getIdPergunta());
		
		return $this->fetchAllStmtObject('Resposta');
	}
	
	public function getFeedbackResposta(Resposta $resposta)
	{
		$this->sql = 'SELECT feedback FROM `ngm_resposta` WHERE id_resposta = ?';
		
		$this->prepare();
		
		$this->setValue($resposta->getIdResposta());
		
		return $this->fetchStmtObject('Resposta');
	}
}