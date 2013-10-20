<?php
include_once '../../helpers/Import.php';
Import::dao ( 'AbstractDao' );
class PerguntaDao extends AbstractDao
{
	public function selectAllIdPerguntaByIdRodada(Pergunta $pergunta)
	{
		$this->sql = 'SELECT p.id_pergunta FROM ngm_pergunta p 
              				 JOIN ngm_rodada r ON ( p.ngm_rodada_id_rodada = r.id_rodada )
              						WHERE p.ngm_rodada_id_rodada=?';
		
		$this->prepare();
		
		$this->setValue($pergunta->getIdRodada());
		
		return $this->fetchAllStmtObject('Pergunta');
	}
	
	public function selectPerguntaRodadaByIdRodadaAssunto(Pergunta $pergunta)
	{
		$this->sql = 'SELECT DISTINCT p.ngm_rodada_id_rodada idRodada, p.id_pergunta id, r.conteudoassunto conteudoAssunto, p.pergunta
							 FROM ngm_pergunta p
								  JOIN ngm_rodada r ON ( r.id_rodada = p.ngm_rodada_id_rodada )
									   WHERE p.ngm_rodada_id_rodada=? AND p.id_pergunta NOT IN (SELECT s.ngm_pergunta_id_pergunta FROM ngm_submissao s )
										     ORDER BY RAND()
				 								      LIMIT 1';
		$this->prepare();
		
		$this->setValue($pergunta->getIdRodada());
		
		return $this->fetchStmtObject('Pergunta');
	}
}
?>